#include <cuda.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <iostream>
#include <cooperative_groups.h>

using namespace cooperative_groups;
namespace cg=cooperative_groups;

#define DTYPE float

__global__ void kernel(DTYPE *a, DTYPE *x, DTYPE* buff,int size, int numberBlocks){
    
    grid_group grid=this_grid();

    __shared__ DTYPE sm[1024];

    int lx=size/(numberBlocks*blockDim.x);
    if(size % numberBlocks*blockDim.x != 0)
    	lx++;    
    int ly=size/(blockDim.y);
    if(size % blockDim.y != 0);
    	ly++;        
    
    for(int h=0;h<ly;h++){
    	for(int g=0;g<lx;g++){
            int i=threadIdx.x+blockIdx.x*blockDim.x+g*blockDim.x*numberBlocks;
            int j=threadIdx.y+h*blockDim.y;
            if(i<size && j<size){
                sm[threadIdx.x+threadIdx.y*blockDim.x]=a[i+j*size]*x[i];
                __syncthreads();
                for (int k=blockDim.x/2;k>0;k/=2){
                    if (threadIdx.x<k)
                    sm[threadIdx.x+threadIdx.y*blockDim.x]+=sm[threadIdx.x+k+threadIdx.y*blockDim.x];
                    __syncthreads();
                }
                if (threadIdx.x==0){
                    buff[j]+=sm[threadIdx.y*blockDim.x];
                }
            }
        }
        grid.sync();                
     }
}


void fillA(DTYPE *a, int size)
{
   for (int i=0;i<size*size;i++)
      a[i]=1.0;
}

//X mit Werten füllen 
void fillX(DTYPE *x, int size)
{
   for (int i=0;i<size;i++){
	x[i]=1;
//      x[i]= (DTYPE)(i+1);
	}
}
int main(int argc, char**argv)
{   
   int sx=32;
   int sy=32;
   int i=1;
   bool standard=true;
   if (argc>1)   
   {
	standard=false;
	sx=atoi(argv[1]);
      	if (argc>2){ 
      		sy=atoi(argv[2]);
      		if(argc>3){ 
      			i=atoi(argv[3]);      					
      		}
      	}	
   }
   if(standard){
   	std::cout<<"Do experiment with standard settings"<<std::endl;
   	std::cout<<"Sx="<<sx<<"\n Sy="<<sy<<"\n Size=1024*"<<i<<std::endl;
   }else 
   {
   	std::cout<<"Do experiment with individual settings"<<std::endl;
   	std::cout<<"Sx="<<sx<<"\n Sy="<<sy<<"\n Size=1024*"<<i<<std::endl;
       }
   int size=1024*i;
   int xblocks=size/sx;
   //Datenfelder anlegen für Host
   DTYPE *a_host, *buff_host, *x_host;
   //und Device
   DTYPE *a_dev, *buff_dev,*x_dev;
   //Events für die Zeitmessung
   cudaEvent_t start,end;
   //Zeiten: 
   float kernelA_time=0.0;

   //TODO: Host Speicher anlegen und A und x füllen
   a_host = (DTYPE*)malloc(size*size*sizeof(DTYPE));
   x_host = (DTYPE*)malloc(size*sizeof(DTYPE));
   buff_host=(DTYPE*)malloc(size*sizeof(DTYPE));

   fillA(a_host,size);
   fillX(x_host,size);
   //TODO: CUDA Events erstellen

   //TODO: CUDA Speicher anlegen für alle Arrays (a_dev,x_dev,y_dev)
   cudaMalloc((void**)&a_dev,size*size*sizeof(DTYPE));
   cudaMalloc((void**)&x_dev,size*sizeof(DTYPE));
   cudaMalloc((void**)&buff_dev,size*sizeof(DTYPE));

   //TODO: Host->Device Memcpy von A und x + Zeitmessung
   //cudaMemcpy(a_dev,a_host,1*sizeof(DTYPE),cudaMemcpyHostToDevice);
   //cudaMemcpy(x_dev,x_host,1*sizeof(DTYPE),cudaMemcpyHostToDevice);

   cudaMemcpy(a_dev,a_host,size*size*sizeof(DTYPE),cudaMemcpyHostToDevice);
   cudaMemcpy(x_dev,x_host,size*sizeof(DTYPE),cudaMemcpyHostToDevice);
   
   dim3 block(sx,sy);
   dim3 grid(size/block.x,size/block.y);
   
	//cache Konfiguration
	if(argc>4){
		if(atoi(argv[4])==1){//L1 Prefered
			std::cout<<"16 kB shared, 48kB L1"<<std::endl;
			cudaFuncSetCacheConfig(kernel, cudaFuncCachePreferL1);
		} else if(atoi(argv[4])==2){
			std::cout<<"48kB shared, 16kb L1"<<std::endl;
			cudaFuncSetCacheConfig(kernel, cudaFuncCachePreferShared);
		}else{
			std::cout<<"32kB shared, 32kB L1"<<std::endl;
			cudaFuncSetCacheConfig(kernel, cudaFuncCachePreferNone);
		}
	}
    grid.y=1;
    grid.x=size/block.x;
    if(size % block.x !=0)
    	grid.x++;
	
    int dev=0;
    cudaGetDevice(&dev);
    cudaDeviceProp deviceProp;
    cudaGetDeviceProperties(&deviceProp, dev);

    int numBlocksPerSm;
    
    cudaOccupancyMaxActiveBlocksPerMultiprocessor(&numBlocksPerSm,kernel,sx,0);

    void *args[]={(void *)&a_dev,(void*)&x_dev,(void*)&buff_dev,(void*)&size,(void*)&numBlocksPerSm};
    grid.y=(int)ceilf(numBlocksPerSm);
	
   //TODO: kernelAx ausführen und Zeit messen
   cudaEventCreate(&start);
   cudaEventCreate(&end);
   cudaEventRecord(start,0);
   cudaLaunchCooperativeKernel((void*)kernel,grid,block,args,numBlocksPerSm); 
   cudaDeviceSynchronize();
   cudaEventRecord(end,0);
   cudaEventSynchronize(end);
   cudaEventElapsedTime(&kernelA_time,start,end);

   if(argc>5){
    cudaMemcpy(buff_host,buff_dev,size*sizeof(DTYPE),cudaMemcpyDeviceToHost);
    for(int lj=size-10;lj<size;lj++){
   		std::cout<<buff_host[lj]<<std::endl;
    } 
   }
   std::cout<<"Computation time: "<<kernelA_time<<std::endl;  
	float gflops=pow(10,-6)*size*size*2/kernelA_time;
   std::cout<<"Computation Performance in GFLOPs: "<<gflops<<std::endl;
   return 0;
}

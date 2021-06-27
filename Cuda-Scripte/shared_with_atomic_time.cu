#include <cuda.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <iostream>

#define DTYPE float
__global__ void kernel(float *a, float *x, float* buff,int Xblocks,int size)
{
	int i=threadIdx.x+blockIdx.x*blockDim.x;
   	int j=threadIdx.y+blockIdx.y*blockDim.y;
   	__shared__ float xSM[1024];
	xSM[threadIdx.x+threadIdx.y*blockDim.x]=a[i+j*size]*x[i];
	__syncthreads();   	
   	if(i<size){	
        	for(int k=blockDim.x/2;k>0;k/=2){
            		if(threadIdx.x<k&&i+k<size){
                		xSM[threadIdx.x+threadIdx.y*blockDim.x]+=xSM[threadIdx.x+k+threadIdx.y*blockDim.x];
                		__syncthreads();
            		}
        	}
        }
	if (threadIdx.x==0){
         atomicAdd(&buff[j],xSM[threadIdx.y*blockDim.x]);
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
   /*if(sx*sy!=t){
   	std::cout<<"Sx*Sy has to be equal to threads per block"<<std::endl;
   	return -1;
   }*/
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
   
   //TODO: kernelAx ausführen und Zeit messen
   cudaEventCreate(&start);
   cudaEventCreate(&end);
   cudaEventRecord(start,0);
   kernel<<<grid,block>>>(a_dev,x_dev,buff_dev,xblocks,size);
   cudaEventRecord(end,0);
   cudaEventSynchronize(end);
   cudaEventElapsedTime(&kernelA_time,start,end);

   if(argc>4){
    cudaMemcpy(buff_host,buff_dev,size*sizeof(DTYPE),cudaMemcpyDeviceToHost);
    for(int lj=0;lj<10;lj++){
   		std::cout<<buff_host[lj]<<std::endl;
    } 
   }
   std::cout<<"Computation time: "<<kernelA_time<<std::endl;  
	float gflops=pow(10,-6)*size*size*2/kernelA_time;
   std::cout<<"Computation Performance in GFLOPs: "<<gflops<<std::endl;
   return 0;
}

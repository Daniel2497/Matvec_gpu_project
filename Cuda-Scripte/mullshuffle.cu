#include <cuda.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <iostream>

#define DTYPE float

__global__ void kernelmull(float *a, float *x, float* buff,int size)
{
	int i=threadIdx.x+blockIdx.x*blockDim.x;
   	int j=threadIdx.y+blockIdx.y*blockDim.y;
	buff[i+j*size]=a[i+j*size]*x[i];
	__syncthreads();
}

#define WARP_SIZE 32
__global__ void kernelshuffle(float *a, float *x, float *b ,int size)
{
	int i=threadIdx.x+blockIdx.x*blockDim.x;
   	int j=threadIdx.y+blockIdx.y*blockDim.y;
   	float res=0.0f;
    __shared__ float sm[32];
   if (threadIdx.x<WARP_SIZE)
      sm[threadIdx.x]=0;
   __syncthreads();
   if (j<size)
   {
      for (int k=i;k<size;k+=blockDim.x*gridDim.x)
      {
         res+=a[k+j*size]*x[k];
      }
      #pragma unroll
      for (int mask=WARP_SIZE/2;mask>0;mask>>=1)
      {
         res+=__shfl_down(res,mask);
      }
      if (threadIdx.x%WARP_SIZE==0)
      {
         sm[threadIdx.x/WARP_SIZE]=res;
      }
      __syncthreads();
      if (threadIdx.x<WARP_SIZE)
      {
         res=sm[threadIdx.x];
         #pragma unroll
         for (int mask=WARP_SIZE/2;mask>0;mask>>=1)
         {
            res+=__shfl_down(res,mask);
         }
      }
      if (threadIdx.x==0)
      {
         //atomicAdd(&b[j],res);
         b[j]=res;
      }
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
   	std::cout<<"Sx="<<sx<<"\nSy="<<sy<<"\nSize=1024*"<<i<<std::endl;
   }else 
   {
   	std::cout<<"Do experiment with individual settings"<<std::endl;
   	std::cout<<"Sx="<<sx<<"\nSy="<<sy<<"\nSize=1024*"<<i<<std::endl;
       }
   /*if(sx*sy!=t){
   	std::cout<<"Sx*Sy has to be equal to threads per block"<<std::endl;
   	return -1;
   }*/
   int size=1024*i;
   int xblocks=size/sx;
   //Datenfelder anlegen für Host
   DTYPE *a_host, *buff_host, *x_host, *b_host;
   //und Device
   DTYPE *a_dev, *buff_dev,*x_dev,*b_dev;
   //Events für die Zeitmessung
   cudaEvent_t start,end;
   //Zeiten: 
   float kernelA_time=0.0;

   //TODO: Host Speicher anlegen und A und x füllen
   a_host = (DTYPE*)malloc(size*size*sizeof(DTYPE));
   x_host = (DTYPE*)malloc(size*sizeof(DTYPE));
   buff_host=(DTYPE*)malloc(size*sizeof(DTYPE));
    b_host=(DTYPE*)malloc(size*sizeof(DTYPE));

   fillA(a_host,size);
   fillX(x_host,size);
   //TODO: CUDA Events erstellen

   //TODO: CUDA Speicher anlegen für alle Arrays (a_dev,x_dev,y_dev)
   cudaMalloc((void**)&a_dev,size*size*sizeof(DTYPE));
   cudaMalloc((void**)&x_dev,size*sizeof(DTYPE));
   cudaMalloc((void**)&buff_dev,size*size*sizeof(DTYPE));
    cudaMalloc((void**)&b_dev,size*sizeof(DTYPE));

   //TODO: Host->Device Memcpy von A und x + Zeitmessung
   //cudaMemcpy(a_dev,a_host,1*sizeof(DTYPE),cudaMemcpyHostToDevice);
   //cudaMemcpy(x_dev,x_host,1*sizeof(DTYPE),cudaMemcpyHostToDevice);

	cudaMemcpy(a_dev,a_host,size*size*sizeof(DTYPE),cudaMemcpyHostToDevice);
	cudaMemcpy(x_dev,x_host,size*sizeof(DTYPE),cudaMemcpyHostToDevice);
	//cudaMemcpy(buff_dev,buff_host,1*sizeof(DTYPE),cudaMemcpyHostToDevice);
   //Konfiguration der CUDA Kernels
   
   dim3 block;
   dim3 blockmull(sx,sy);
 
   dim3 grid;
    dim3 gridmull(size/sx,size/sy);
    block.x=128;
    block.y=1;
    grid.x=1;
    grid.y=size;
   
	//cache Konfiguration
	if(argc>4){
		if(atoi(argv[4])==1){//L1 Prefered
			std::cout<<"16 kB shared, 48kB L1"<<std::endl;
			cudaFuncSetCacheConfig(kernelshuffle, cudaFuncCachePreferL1);
		} else if(atoi(argv[4])==2){
			std::cout<<"48kB shared, 16kb L1"<<std::endl;
			cudaFuncSetCacheConfig(kernelshuffle, cudaFuncCachePreferShared);
		}else{
			std::cout<<"32kB shared, 32kB L1"<<std::endl;
			cudaFuncSetCacheConfig(kernelshuffle, cudaFuncCachePreferNone);
		}
	}
	
   //TODO: kernelAx ausführen und Zeit messen
   cudaEventCreate(&start);
   cudaEventCreate(&end);
   cudaEventRecord(start,0);
    //kernelmull<<<gridmull,blockmull>>>(a_dev,x_dev,buff_dev,size);
    //cudaDeviceSynchronize();
   kernelshuffle<<<grid,block>>>(a_dev,x_dev,b_dev,size);//,y_dev,size);
    cudaDeviceSynchronize();
   cudaEventRecord(end,0);
   cudaEventSynchronize(end);
   cudaEventElapsedTime(&kernelA_time,start,end);
   
   if(argc>5){
    cudaMemcpy(b_host,b_dev,size*sizeof(DTYPE),cudaMemcpyDeviceToHost);
    for(int lj=0;lj<10;lj++){
   		std::cout<<b_host[lj]<<std::endl;
    }
   }
   std::cout<<"Computation time: "<<kernelA_time<<std::endl;
	float gflops=pow(10,-6)*size*size*2/kernelA_time;
   std::cout<<"Computation Performance in GFLOPs: "<<gflops<<std::endl;
   return 0;
}


#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <iostream>
#include<chrono>
using std::chrono::system_clock;
using std::chrono::duration;

#define DTYPE float

void matvec(float *a, float* x, float *b, int size, int blocksize)
{
   if(size%blocksize==0){
      int iblocks=size/blocksize;//Zeilenteilmatrix
      int jblocks=size/blocksize;//Spaltenteilmatrizen
      for(int ii=0;ii<size;ii+=blocksize)
         for(int jj=0;jj<size;jj+=blocksize)
            for(int i=ii;i<ii+blocksize;i++)
               for(int j=jj;j<jj+blocksize;j++)
                  b[j]+=a[i+size*j]*x[i];
   }
   else std::cout<<"Blocksize passt nicht zur Matrixgröße"<<std::endl;
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

void fillb(DTYPE *x, int size)
{
   for (int i=0;i<size;i++){
	x[i]=0;
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
   

   //TODO: Host Speicher anlegen und A und x füllen
   a_host = (DTYPE*)malloc(size*size*sizeof(DTYPE));
   x_host = (DTYPE*)malloc(size*sizeof(DTYPE));
   buff_host=(DTYPE*)malloc(size*sizeof(DTYPE));

   fillA(a_host,size);
   fillX(x_host,size);
   fillb(buff_host,size);
   
   auto start = system_clock::now();
   matvec(a_host,x_host, buff_host, size, sx);
   auto end= system_clock::now();
   const double elapsed_seconds = duration<double>(end-start).count();
   std::cout<< elapsed_seconds<<std::endl;
   
   for(int lj=0;lj<10;lj++){
   		std::cout<<buff_host[lj]<<std::endl;
    } 

   std::cout<<"Computation time: "<<elapsed_seconds<<std::endl;  
	float gflops=pow(10,-9)*size*size*2/elapsed_seconds;
   std::cout<<"Computation Performance in GFLOPs: "<<gflops<<std::endl;

   return 0;
}

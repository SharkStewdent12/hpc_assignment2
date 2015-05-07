///////////////////////////////////////////////////////////////////////////////
// Declarations
///////////////////////////////////////////////////////////////////////////////
// Libraries
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <cuda_runtime.h>

// Parameters
#define ImgSize 256
#define BorderOffset 1
#define BlockSize 16
#define NumRepeats 10

// Functions (pre-declarations)
void applyConvolution_serial(int* sourceImg, int* kernel, int* resultImg);
__global__ void applyConvolution_parallel(int* sourceImg, int* kernel, int* resultImg);
bool equalsImage(int* image1, int* image2);
void displayImage(int* image);
void populateRandomImg(int* img);

///////////////////////////////////////////////////////////////////////////////
// Main funcion
///////////////////////////////////////////////////////////////////////////////
int main( int argc, char** argv) {
	//initialise
	if (argc != 2){
		printf("Wrong arguments, please place a single number from 1 to 3 to choose a kernel to apply as an argument.\n");
		return 1;
	}
	int kernelNum = strtol( argv[1], (char**)NULL,10 );
	if ((kernelNum < 1) || (kernelNum > 3)){
		printf("Wrong arguments, please place a single number from 1 to 3 to choose a kernel to apply as an argument.\n");
		return 1;
	}

	printf("%d\n",kernelNum);

	//Generate image

	//choose kernel

	//time serial

	//time parallel

	//validate output

	//display results

	return 0;
}

///////////////////////////////////////////////////////////////////////////////
// Functions
///////////////////////////////////////////////////////////////////////////////

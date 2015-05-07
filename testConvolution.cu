///////////////////////////////////////////////////////////////////////////////
// Declarations
///////////////////////////////////////////////////////////////////////////////
// Libraries
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <cuda_runtime.h>

// Parameters
#define ImgWidth 256
#define ImgHeight 256
#define BorderOffset 1
#define BlockSize 16
#define NumRepeats 10

// Functions (pre-declarations)
void applyConvolution_serial(int* sourceImg, int* kernel, int* resultImg);
__global__ void applyConvolution_parallel(int* sourceImg, int* kernel, int* resultImg);
bool equalsImage(int* image1, int* image2);
void displayMatrix(int* matrix, int matrixWidth, int matrixHeight);
void populateRandomImg(int* img);

///////////////////////////////////////////////////////////////////////////////
// Main funcion
///////////////////////////////////////////////////////////////////////////////
int main( int argc, char** argv) {
	////////////////////
	// Kernel selection
	if (argc != 2){
		printf("Wrong arguments, please place a single number from 1 to 3 to choose a kernel to apply as an argument.\n");
		return 1;
	}
	int kernelNum = strtol( argv[1], (char**)NULL,10 );

	/*
	if ((kernelNum < 1) || (kernelNum > 3)){
		printf("Wrong arguments, please place a single number from 1 to 3 to choose a kernel to apply as an argument.\n");
		return 1;
	}
	*/

	printf("Kernel chosen: %d\n",kernelNum);

	////////////////////
	// Initialisation
	size_t imgSize = (ImgWidth+BorderOffset) * (ImgHeight+BorderOffset) * sizeof(int);
	srand (time(NULL));
	int* sourceImg = (int*)malloc(imgSize);
	int* serialImg = (int*)malloc(imgSize);
	int* parallelImg = (int*)malloc(imgSize);
	int* kernel;// = (int*)malloc(9*sizeof(int));
	int kernel1[9] = {-1,-1,-1,-1,9,-1,-1,-1,-1};
	int kernel2[9] = {-1,0,1,-2,0,2,-1,0,1};
	int kernel3[9] = {2,0,0,0,-1,0,0,0,-1};

	switch (kernelNum) {
		case 1:
			kernel = kernel1;
			break;
		case 2:
			kernel = kernel2;
			break;
		case 3:
			kernel = kernel3;
			break;
		default:
			printf("Wrong arguments, please place a single number from 1 to 3 to choose a kernel to apply as an argument.\n");
			return 1;			
	}//end switch

	displayMatrix(kernel,3,3);
	////////////////////
	//Generate image


	////////////////////
	//choose kernel

	////////////////////
	//time serial

	////////////////////
	//time parallel

	////////////////////
	//validate output

	////////////////////
	//display results

	return 0;
}

///////////////////////////////////////////////////////////////////////////////
// Functions
///////////////////////////////////////////////////////////////////////////////

void displayMatrix(int* matrix, int matrixWidth, int matrixHeight) {

for (int row = 0; row < matrixWidth; row++) {

	for (int col = 0; col < matrixHeight; col++) {

		printf("%d ",matrix[row*matrixWidth+col]);

	}//end for col
	
	printf("\n");

}//end for row


}//end funcion displayMatrix























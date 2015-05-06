#include <stdlib.h>
#include <cuda_runtime.h>
#include "matrix.h"
#include "outputHandling.h"

const int imageDim=11;

int main( int argc, char** argv) {

	printError("test");
	//generate sample image
	Matrix sampleImage;
	sampleImage.width = imageDim;
	sampleImage.height = imageDim;


	populateRandomMatrix(sampleImage);

	printMatrix(sampleImage);


}




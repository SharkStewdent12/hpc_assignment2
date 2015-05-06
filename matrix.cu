#include <stdlib.h>     /* srand, rand */
#include <time.h>


typedef struct {
	int width;
	int height;
	float* elements;
} Matrix;

void applyConvolution_serial(Matrix sourceMatrix, Matrix kernel, Matrix outputMatrix) {
	//TO-DO
}//function applyConvolution_serial

void applyConvolution_parallel(Matrix sourceMatrix, Matrix kernel, Matrix outputMatrix) {
	//TO-DO
}//function applyConvolution_parallel

void populateRandomMatrix( Matrix matrix ) {

	srand (time(NULL)); //initialise random seed

	int rowStart = (matrix.height-1) * matrix.width;
	//set top and bottom rows to be all zero, for border
	for (int col = 0, col < matrix.width, col++) {
		matrix.elements[col] = 0;
		matrix.elements[rowStart + col] = 0;
	}//for col

	//populate with random integers
	for (int row = 1; row < matrix.height-1; row++){ //already done first and last rows

		rowStart = row*matrix.width;
		matrix.elements[rowStart] = 0; //first column to 0
		matrix.elements[rowStart+matrix.width-1] = 0; //last column to 0

		for (int col = 1, col < matrix.width-1, col++) { //first and last col are for border
			matrix.elements[rowStart+col] = rand() % 256; //integer between 0 and 255
		}//for col

	}//for row

}//function populateRandomMatrix

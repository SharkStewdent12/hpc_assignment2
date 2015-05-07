#include "matrix.h"
#include "outputHandling.h"

void printError(char error[]) {
	printf("error: '%s'\n",error);
}//function printError


void printMatrix(Matrix inputMatrix) {

	for (int row = 0; row < inputMatrix.height; row++) {
		for (int col = 0; col < inputMatrix.width; col++) {
			printf("%u ",inputMatrix.elements[row*inputMatrix.width + col]);
		}//for col
		printf("\n");
	}//for row

}


void printLine(char message[]) {
	printf("%s\n",message);
}//function printLine

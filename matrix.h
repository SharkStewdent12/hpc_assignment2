typedef struct {
//public:
	int width;
	int height;
	int* elements;
} Matrix;


void applyConvolution_serial(Matrix sourceMatrix, Matrix kernel, Matrix outputMatrix);


void applyConvolution_parallel(Matrix sourceMatrix, Matrix kernel, Matrix outputMatrix);

void populateRandomMatrix( Matrix matrix );

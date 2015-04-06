#include <iostream>
#include <time.h>
#include <omp.h>
#include <stdlib.h>

using namespace std;

int main(int argc, char *argv[]) {

	
	int n,m,k;
	cout << "input size n, m, k\n";
	cin >> n >> m >> k;   

	double **matrix1 = new double*[n];
	double **matrix2 = new double*[m];
	double **result = new double*[n]; 


	for (int i = 0; i < n; i++) {
		matrix1[i] = new double[m];
		result[i] = new double[k];
	}
	for (int i = 0; i < m; i++) {
		matrix2[i] = new double[k];
	}
	for(int i = 0; i < n; i++) {
		for(int j = 0; j < m; j++) {
			matrix1[i][j] = (double)rand() / RAND_MAX;
		}
	}

	for(int i = 0; i < m; i++) {
		for(int j = 0; j < k; j++) {
			matrix2[i][j] = (double)rand() / RAND_MAX;
		}
	}

	time_t timeStart = time(NULL);
	#pragma omp parallel for num_threads(8) shared(matrix1, matrix2, result)
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < k; j++) {
			result[i][j] = 0;
			for (int ii = 0; ii < m; ii++) {
				result[i][j] += matrix1[i][ii] * matrix2[ii][j];
			}
		}
	}    

	time_t timeStop = time(NULL) - timeStart;
	cout << "Spend time: " << timeStop<< "\n\n";

	for (int i = 0; i < n; i++) {
		delete matrix1[i];
		delete result[i];
	}
	for (int i = 0; i < m; i++) { 
		delete matrix2[i];
	}

	delete matrix1;
	delete matrix2;
	delete result;
	
}

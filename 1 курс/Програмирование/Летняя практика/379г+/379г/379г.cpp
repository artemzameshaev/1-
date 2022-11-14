#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <math.h>

void main()
{
	SetConsoleOutputCP(1251);
	int n, m;
	printf("Введите n: ");
	scanf_s("%d", &n);
	printf("Введите m: ");
	scanf_s("%d", &m);

	printf("Матрица А:\n");
	double** a = (double**)malloc(sizeof(double*) * n); 
	for (int i = 0; i < n; i++) 
	{
		a[i] = (double*)malloc(sizeof(double) * m); 
		for (int j = 0; j < m; j++) 
		{
			a[i][j] = rand() % 90 + 10;
			printf("\t%.1lf", a[i][j]);
		}
		printf("\n");
	}

	printf("Массив B:\n");
	double* b = (double*)malloc(sizeof(double) * n);
	for (int i = 0; i < n; i++)
	{
		b[i] = 0;
		for (int j = 0; j < m; j++)
			b[i] += a[i][j];
		b[i] /= m;
		printf("\t%.1lf", b[i]);
	}
	printf("\n");
	system("pause");
}


﻿#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <time.h>

double** CreateMatrix(int n, int m, int beginX, int EndX)
{
	double** a = (double**)malloc(sizeof(double*) * n); 
	for (int i = 0; i < n; i++) 
	{
		a[i] = (double*)malloc(sizeof(double) * m); 
		for (int j = 0; j < m; j++) 
			a[i][j] = rand() % (EndX - beginX + 1) + beginX;
	}
	return a;
}

void PrintMatrix(double** a, int n, int m, const char* str)
{
	printf("%s\n", str);
	for (int i = 0; i < n; i++) 
	{
		for (int j = 0; j < m; j++)  
			printf("%7.1lf", a[i][j]);
		printf("\n");
	}
}

double Max(double** a, int n)
{
	double m = a[0][0];
	for (int i = 0; i < n; i++)
		for (int j = 0; j <= i; j++)
			if (a[i][j] > m)
				m = a[i][j];
	return m;
}

int main()
{
	setlocale(LC_ALL, "");
	srand(time(0));
	int n = 5;
	double** a = CreateMatrix(n, n, -99, 99);
	PrintMatrix(a, n, n, "Матрица: ");
	printf("Максимальный элемент: %.2lf\n", Max(a, n));
	system("pause");
	return 0;

}


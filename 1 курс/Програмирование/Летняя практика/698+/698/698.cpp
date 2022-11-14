
#include <stdlib.h>
#include <stdio.h>
#include <windows.h>
#include <string.h>


int main()
{
	SetConsoleCP(1251);
	SetConsoleOutputCP(1251);
	int n;
	printf("Введимте размерность матрицы: ");
	scanf_s("%d", &n);
	int** a = (int**)malloc(sizeof(int*) * n); 

	for (int i = 0; i < n; i++) 
	{
		a[i] = (int*)malloc(sizeof(int) * n); 
		for (int j = 0; j < n; j++) 
		{
			a[i][j] = rand() % 90 + 10;
			printf("%5d", a[i][j]);
		}
		printf("\n");
	}

	int** b = (int**)malloc(sizeof(int*) * n);
	for (int i = 0; i < n; i++)
	{
		b[i] = (int*)malloc(sizeof(int) * n);
		for (int j = 0; j < n; j++)
		{
			b[i][j] = 0;
			for (int k = 0; k < n; k++)
				b[i][j] += a[i][k] * a[k][j];
		}
	}

	printf("Матрица в квадрате:\n");
	for (int i = 0; i < n; i++) 
	{
		for (int j = 0; j < n; j++)  
			printf("%7d", b[i][j]);
		printf("\n");
	}

	system("pause");
	return 0;

}


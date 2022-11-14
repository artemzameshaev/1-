#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <math.h>



double* CreateArray(int n, int beginX, int EndX)
{
	double* a = (double*)malloc(sizeof(double) * n);; 
	for (int i = 0; i < n; i++) 
		a[i] = rand() % (EndX - beginX + 1) + beginX;
	return a;
}


void PrintArray(double* a, int n, const char* str)
{
	printf("%s", str);
	for (int i = 0; i < n; i++) 
		printf("%6.1lf", a[i]); 
	printf("\n");
}

double Len(double x1, double y1, double x2, double y2)
{
	return sqrt(pow((x2 - x1), 2) + pow((y2 - y1), 2));
}

void main()
{
	SetConsoleOutputCP(1251);
	int n = 10;
	double* x = CreateArray(n, 10, 99);
	double* y = CreateArray(n, 10, 99);

	PrintArray(x, n, "X: ");
	PrintArray(y, n, "Y: ");

	double p = Len(x[0], y[0], x[n - 1], y[n - 1]);
	for (int i = 1; i < n; i++)
		p = p + Len(x[i - 1], y[i - 1], x[i], y[i]);
	printf("Периметр: %.2lf", p);
	printf("\n");
	system("pause");
}


#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <math.h>

void main()
{
	SetConsoleOutputCP(1251);
	int n;
	printf("Введите n: ");
	scanf_s("%d", &n);
	FILE* f = fopen("data.txt", "w");
	for (int i = 1; i <= n; i++)
		fprintf(f, "%.0lf\n", pow(2, i) + pow(3, i + 1));
	fclose(f);
	system("pause");
}

#include <stdlib.h>
#include <stdio.h>
#include <windows.h>
#include <string.h>
#include <stdbool.h>

int main()
{
	SetConsoleCP(1251);
	SetConsoleOutputCP(1251);
	int na = 25, nb;
	printf("Массив А:\n");
	int* a = (int*)malloc(sizeof(int) * na);; //выделяем память
	for (int i = 0; i < na; i++) //бежим по элементам
	{
		a[i] = rand() % 1000;
		printf("%5d", a[i]); //выводим их
	}
	printf("\n");

	printf("Введимте размерность массива B: ");
	scanf("%d", &nb);
	printf("Массив B:\n");
	int* b = (int*)malloc(sizeof(int) * nb);; //выделяем память
	for (int i = 0; i < nb; i++) //бежим по элементам
	{
		b[i] = rand() % 1000;
		printf("%5d", b[i]); //выводим их
	}
	printf("\n");

	bool IsF = true;
	for (int i = 0; i < na && IsF; i++)
	{
		bool IsF2 = false;
		for (int j = 0; j < nb && !IsF2; j++)
			if (a[i] == b[j])
				IsF2 = true;
		IsF = IsF2;
	}
	if (IsF)
		printf("Верно\n");
	else
		printf("Не верно\n");
	system("pause");
	return 0;
#include <iostream>
#include <locale>
#include <stdio.h>
#include <math.h>


int main()
{
	int x, y, z;
	float a, b;

	setlocale(LC_ALL, "rus");

	puts("Введите значения x y z ");
	scanf_s("%d%d%d", &x, &y, &z);

	printf("Значение х= %d \n", x);
	printf("Значение у= %d \n", y);
	printf("Значение z= %d \n", z);

	a = (3 + exp(y - 1)) / (1 + x * x * abs(y - sin(z) / cos(z)));
	printf("Значение а=%f \n", a);

	b = 1 + abs(y - x) + pow(y - x, 2) / 2 + pow(abs(x - y), 3) / 3;
	printf("Значение b=%f \n", b);

	system("pause");
	return(0);
}
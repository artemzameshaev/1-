#include <iostream>
#include <locale>

int main()
{
	int a, s;
	setlocale(LC_ALL, "rus");
	printf("Введите число <99\n");
	scanf_s("%d", &a);
	s = a / 10 + a % 10;
	if (a * a == s * s * s) printf("Верно\n");
	else printf("Не верно\n");
	return 0;
}

#include <stdlib.h>
#include <stdio.h>
#include <windows.h>
#include <string.h>


int main()
{
	SetConsoleCP(1251);
	SetConsoleOutputCP(1251);

	printf("Введимте строку: ");
	char str[512];
	fgets(str, 512, stdin);
	for (int i = 0; str[i] != ' ' && str[i] != '\0'; i++)
		if (str[i] >= 'a' && str[i] <= 'z')
			str[i] = str[i] - ('a' - 'A');
		else if (str[i] >= 'а' && str[i] <= 'я')
			str[i] = str[i] - ('а' - 'А');
	printf("Результат: %s", str);
	system("pause");
	return 0;
}
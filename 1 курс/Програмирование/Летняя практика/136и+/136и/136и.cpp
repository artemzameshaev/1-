#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <time.h>


struct Node
{
	double Value;
	struct Node* Next;
};


struct Node* Add(struct Node* Head, double Value)
{
	struct Node* temp = (struct Node*)malloc(sizeof(struct Node)); 
	temp->Value = Value; 
	temp->Next = Head; 
	return temp; 
}


void PrintList(struct Node* Head, const char* text)
{
	printf("%s\n", text);
	struct Node* p = Head; 
	while (p != NULL) { 
		printf("  %.1lf", p->Value);
		p = p->Next; 
	}
	printf("\n");
}

long double fact(int N)
{
	if (N < 0) 
		return 0; 
	if (N == 0) 
		return 1; 
	else 
		return N * fact(N - 1); 
}

double Sum(struct Node* Head)
{
	double s = 0; int i = 0;;
	struct Node* p = Head; 
	while (p != NULL) { 
		s = s + p->Value / fact(i);
		i++;
		p = p->Next; 
	}
	return s;
}




int main()
{
	setlocale(LC_ALL, "");
	srand(time(0));

	
	struct Node* L = NULL;
	for (int i = 0; i <= 10; i++)
		L = Add(L, rand() % 90 + 10); 
	PrintList(L, "Список:"); 
	printf("Сумма ряда: %.2lf\n", Sum(L));
	system("pause");
	return 0;

}


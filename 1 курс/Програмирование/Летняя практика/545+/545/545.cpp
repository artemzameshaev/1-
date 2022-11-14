#include <iostream>
#include<stdio.h>
#include<conio.h>  

struct Titem {      
    int n;
    Titem* next, * prev;
} *first, * s, * p;

int n, m;

void add_item(int v) {     
    Titem* p;

    if (s == NULL && first == NULL) {
        s = new Titem;
        s->n = v;
        s->next = NULL;
        s->prev = NULL;
        first = s;
    }

    else {

        p = new Titem;
        p->n = v;
        p->next = NULL;
        p->prev = s;
        s->next = p;
        s = p;

    }
    return;
}

int main() 
{

    int i;
    setlocale(LC_ALL, "Rus");
    printf("\nвведите число n: ");
    scanf_s("%d", &n);

    printf("\nвведите число m: ");
    scanf_s("%d", &m);

    for (i = 0; i < n; i++)    
        add_item(i + 1);
    s->next = first;         
    first->prev = s;

    p = first;
    for (i = 0; i < n; i++) {
        printf("%d ", p->n);  //Вывод на экран исходного списока
        p = p->next;
    }
    printf("\n");


    s = first;
    while (n > 1) 
    {               // удаление m-го
                              
                              
        p = s;
        for (i = 1; i < m; i++)
            p = p->next;
        p->next->prev = p->prev;   
        p->prev->next = p->next;   
        s = p->next;
        delete p;
        n--;
    }


    printf("Оставшийся: %d ", s->n);         //Вывод на экран номера оставшигося 

    _getch();
    return 0;
}
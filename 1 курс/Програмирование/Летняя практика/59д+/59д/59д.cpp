#include <stdio.h>
#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    int x, y;
    setlocale(LC_ALL, "rus");
    cout << "Введите: x, y" << std::endl;
    cin >> x >> y;
    if (y + 2 * x <= 1 && y - 2 * x >= -1 && y + 2 * x >= -1 && y - 2 * x <= 1) 
    {
        cout << "Принадлежит" << std::endl;
    }
    else {
        cout << "Не принадлежит" << std::endl;
    }
    return 0;
}

#include <iostream>
# include <locale> 
using namespace std;

int main()
{
    int n;
    int sum = 0;
    setlocale(LC_ALL, "rus");
    printf ( "Введите число n = ");
    cin >> n;

    while (n != 0)
    {
        sum += n % 10;
        n /= 10;
    }
    cout << "sum = " << sum << endl;

    return 0;
}

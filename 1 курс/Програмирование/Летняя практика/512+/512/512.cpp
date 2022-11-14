#include <iostream>
#include <fstream>
#include <string>
#include <Windows.h>
using namespace std;

int main()
{
    SetConsoleCP(1251);
    SetConsoleOutputCP(1251);

    ifstream fin("file.txt");
    if (fin.is_open())
    {
        char ch;
        do
        {
            string name;
            setlocale(LC_ALL, "rus");
            cout << "Введите ФИО: ";
            getline(cin, name);

            string name_f;
            string number;
            int flag = 0;

            while (true)
            {
                string temp;

                fin >> temp;
                name_f = temp + ' ';

                fin >> temp;
                if (fin.eof()) break;
                name_f.append(temp);

                fin >> number;

                if (name_f == name)
                {
                    cout << name << ' ' << number << endl;
                    flag = 1;
                }
            }
            if (flag == 0) cout << "Не найден!" << endl;

            cout << "Продолжить? (Y/N): ";
            (cin >> ch).get();
            if (ch != 'y')
            {
                fin.close();
                break;
            }

            flag = 0;
            fin.clear();
            fin.seekg(0);

        } while (true);
    }
    else cout << "Ошибка!" << endl;

    system("pause");
    return 0;
}

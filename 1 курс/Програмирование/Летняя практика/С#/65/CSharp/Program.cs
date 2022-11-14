using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp
{
    class Program
    {
        static void Main()
        {
            Console.Write("Введите число <99: ");
            int a = int.Parse(Console.ReadLine());
            int s = a / 10 + a % 10;
            if(a*a==s*s*s)
                Console.WriteLine("Верно"); 
            else
                Console.WriteLine("Не верно");
            Console.ReadKey();
        }
    }
}

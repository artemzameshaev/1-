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
            Console.Write("Введите n: ");
            int n = int.Parse(Console.ReadLine());
            int[] a = new int[25];
            int[] b = new int[n];
            Random rnd = new Random();

            Console.WriteLine("Массив А");
            for (int i=0; i<a.Length; i++)
            {
                a[i] = rnd.Next(1, 999);
                Console.Write(a[i].ToString().PadLeft(5));
            }
            Console.WriteLine();
            Console.WriteLine("Массив B");
            for (int i = 0; i < b.Length; i++)
            {
                b[i] = rnd.Next(1, 999);
                Console.Write(b[i].ToString().PadLeft(5));
            }
            Console.WriteLine();

            bool IsF = true;
            for (int i = 0; i < a.Length && IsF; i++)
            {
                bool IsF2 = false;
                for (int j = 0; j < b.Length && !IsF2; j++)
                    if (a[i] == b[j])
                        IsF2 = true;
                IsF = IsF2;
            }
            if(IsF)
                Console.WriteLine("Верно");
            else
                Console.WriteLine("Не верно");
            Console.ReadKey();
        }
    }
}

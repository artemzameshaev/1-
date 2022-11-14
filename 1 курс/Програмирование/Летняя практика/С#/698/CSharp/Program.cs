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
            int[,] a = new int[n, n];
            Random rnd = new Random();
            Console.WriteLine("Матрица А");
            for (int i=0; i<n; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    a[i, j] = rnd.Next(10, 99);
                    Console.Write("  " + a[i, j]);
                }
                Console.WriteLine();
            }
            int[,] b = new int[n, n];
            for (int i = 0; i < n; i++)
                for (int j = 0; j < n; j++)
                {
                    b[i,j] = 0;
                    for (int k = 0; k < n; k++)
                        b[i,j] += a[i,k] * a[k,j];
                }
            Console.WriteLine("Матрица А^2");
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < n; j++)
                     Console.Write("  " + b[i, j]);
                Console.WriteLine();
            }
            Console.ReadKey();
        }
    }
}

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
            Console.Write("Введите строку с пробелами: ");
            string str = Console.ReadLine();
            string Word = str.Split(' ')[0];
            Word = Word.ToUpper();
            str = Word + str.Substring(Word.Length, str.Length - Word.Length);
            Console.WriteLine("Результат: "+str);            
            Console.ReadKey();
        }
    }
}

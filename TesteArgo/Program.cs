using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TesteArgo
{
    public class Program
    {
        public static void Main(string[] args)
        {






            Console.Write("\n----------TESTE 1 (SOMAR)----------");
            Console.Write("\n\nInforme o Primeiro número: ");
            string numero1 = Console.ReadLine();
            Console.Write("Informe o Segundo número: ");
            string numero2 = Console.ReadLine();

            teste1 teste1 = new teste1();
            int Result = teste1.Somar(Convert.ToInt32(numero1), Convert.ToInt32(numero2));

            Console.WriteLine("\n O retorno do teste1 (Somar) é: {0}", Result);

            Console.Write("\n----------TESTE 1 (SUBTRAIR)----------");
            Console.Write("\n\nInforme o Primeiro número: ");
            numero1 = Console.ReadLine();
            Console.Write("Informe o Segundo número: ");
            numero2 = Console.ReadLine();

            Result = teste1.Subtrair(Convert.ToInt32(numero1), Convert.ToInt32(numero2));

            Console.WriteLine("\n O retorno do teste1 (Subtrair) é: {0}", Result);
            Console.Read();
        }



    }
}

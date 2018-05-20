using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TesteArgo
{
    public class teste1
    {
        public int Somar(int n1, int n2)
        {
            return n1 + n2;
        }

        public int Subtrair(int n1, int n2)
        {
            return n1 - n2;
        }

        public decimal Media(params int[] valores)
        {
            decimal valoresSum = valores.Sum();
            return valoresSum / valores.Count();
        }

        public int CalcularIdade(int ano, int mes, int dia)
        {
            DateTime birthDate = new DateTime(ano, mes, dia);
            DateTime today = DateTime.Now;
            int age = DateTime.Now.Year - ano;

            if (birthDate > today.AddYears(-age))
                age--;

            return age;
        }
    }
}

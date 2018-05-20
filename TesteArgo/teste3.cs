using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TesteArgo
{
    public class teste3
    {
        /// <summary>
        /// ex: nome = joao da silva pereira, retorno = Joao da Silva Pereira
        /// </summary>
        /// <param name="nome"></param>
        /// <returns></returns>
        public string NomesComPrimeirasLetrasMaiusculas(string nome)
        {

            nome = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ToTitleCase(nome.ToLower());
            nome = nome.Contains("Da") ? nome.Replace("Da", "da") : nome;
            nome = nome.Contains("De") ? nome.Replace("De", "de") : nome;

            return nome;

        }


        /// <summary>
        /// ex: nome = cleber reis pereira, retorno = Cleber Pereira
        /// </summary>
        /// <param name="nome"></param>
        /// <returns></returns>
        public string RemoverNomeDoMeio(string nome)
        {
            var capitalLetter = nome.Split(' ').Select(n => n.ToCharArray()).ToList();

            capitalLetter.ForEach(n =>
            {
                for (int i = 0; i < n.Length; i++)
                {
                    n[i] = i.Equals(0) ? char.ToUpper(n[i]) : char.ToLower(n[i]);
                }
            });

            nome = string.Join("", capitalLetter[0]);
            nome += " ";
            nome += string.Join("", capitalLetter[capitalLetter.Count - 1]);

            return nome;
        }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TesteArgo
{
    public class teste2
    {
        public List<int> CriarLista(int quantidade)
        {
            List<int> ResultList = new List<int>(quantidade);

            for (int i = 0; i < quantidade; i++)
            {
                ResultList.Add(i);
            }

            return ResultList;
        }

        public List<int> OrdenarLista(params int[] valores)
        {
            List<int> ResultOrder = new List<int>();

            for (int i = 0; i < valores.Count(); i++)
            {
                ResultOrder.Add(valores[i]);
            }

            ResultOrder.Sort();
            return ResultOrder;
        }
    }
}

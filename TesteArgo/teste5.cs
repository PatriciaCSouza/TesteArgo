using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using BusinessObjects;
using TesteArgo.Database;

namespace TesteArgo
{
    /// <summary>
    /// Nessa classe deve ser feito o acesso a banco de dados
    /// Dados de conexao do banco de dados
    /// host: den1.mssql6.gear.host
    /// base: testecore
    /// user:testecore
    /// senha : Dz2iI~!U1Edq
    /// 
    /// Tabela Destino
    /// 
    /// Colunas:
    /// DestinoId inteiro 
    /// Nome texto nulavel
    /// Dia data nulavel
    /// 
    /// </summary>
    public class teste5
    {
        List<Destino> returnvalue = new List<Destino>();
        Destino getReturn = new Destino();
        /// <summary>
        /// 
        /// </summary>
        /// <param name="filtro"></param>
        /// <returns></returns>
        public List<Destino> ListarDestino()
        {

            DataTable getReturnDestino = getReturn.GetDestino();

            for (int i = 0; i < getReturnDestino.Rows.Count; i++)
            {
                DataRow row = getReturnDestino.Rows[i];
                getReturn = new Destino();
                getReturn.Nome = row["Nome"].ToString();
                returnvalue.Add(getReturn);
            }

            return returnvalue;
        }

        public Destino buscarPorId(int id)
        {
            Destino returnDestino = new Destino();
            DataTable getReturnDestino = getReturn.GetDestinoById(id);

            if (getReturnDestino.Rows.Count > 0)
            {
                returnDestino.DestinoId = Convert.ToInt32(getReturnDestino.Rows[0]["DestinoId"]);
                returnDestino.Nome = getReturnDestino.Rows[0]["Nome"].ToString();
            }

            return returnDestino;
        }
    }
}

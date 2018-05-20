using BusinessObjects;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TesteArgo.Database
{

    /// <summary>
    /// @Author: Patricia Costa
    /// @Date: 19/05/2018
    /// @Description: 
    ///         This class select data from Destino table
    /// </summary>
    public class Destino
    {
        #region Private Variables

        string strConnection = TesteArgo.Properties.Settings.Default.connSql;

        #endregion

        #region Properties
        private Int32 destinoId;
        [SqlDataAttribute("@DestinoId", SqlDbType.Int)]
        public Int32 DestinoId
        {
            get { return destinoId; }
            set { destinoId = value; }
        }


        private String nome;
        [SqlDataAttribute("@Nome", SqlDbType.VarChar)]
        public String Nome
        {
            get { return nome; }
            set { nome = value; }
        }
        #endregion

        #region Methods
        [DataObjectMethod(DataObjectMethodType.Select)]
        public DataTable GetDestino()
        {

            DataTable dr = new DataTable();

            using (SqlConnection sqlConn = new SqlConnection(strConnection))
            {
                sqlConn.Open();
                using (SqlCommand sqlComm = new SqlCommand())
                {

                    sqlComm.Connection = sqlConn;
                    sqlComm.CommandType = CommandType.StoredProcedure;
                    sqlComm.CommandText = "GetDestino";

                    dr.BeginInit();
                    dr.Load(sqlComm.ExecuteReader(CommandBehavior.CloseConnection));
                    dr.EndInit();
                }
            }

            return dr;

        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public DataTable GetDestinoById(int id)
        {

            DataTable dr = new DataTable();

            using (SqlConnection sqlConn = new SqlConnection(strConnection))
            {

                using (SqlCommand cmd = new SqlCommand("GetDestinoByID", sqlConn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@DestinoId", SqlDbType.Int).Value = id;

                    sqlConn.Open();

                    dr.BeginInit();
                    dr.Load(cmd.ExecuteReader(CommandBehavior.CloseConnection));
                    dr.EndInit();
                }
            }

            return dr;

        }
        #endregion

    }
}

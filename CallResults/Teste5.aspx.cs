using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TesteArgo;
using TesteArgo.Database;

namespace CallResults
{
    public partial class Teste5 : System.Web.UI.Page
    {
        teste5 Test5 = new teste5();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIdDestino_Click(object sender, EventArgs e)
        {
            if (txtIdDestino.Text != string.Empty)
            {
                int id = Convert.ToInt32(txtIdDestino.Text);
                Destino destino = Test5.buscarPorId(id);

                txtResultDestino.Text = string.Join(Environment.NewLine, destino.Nome);
            }

        }

        protected void btnAllDestinos_Click(object sender, EventArgs e)
        {
            txtIdDestino.Text = string.Empty;
            var Destino = Test5.ListarDestino();

            foreach (var item in Destino)
            {
                txtResultDestino.Text += item.Nome + "\n";
            }

        }
    }
}
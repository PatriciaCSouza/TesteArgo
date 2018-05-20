using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TesteArgo;

namespace CallResults
{
    public partial class Contact : Page
    {
        teste2 Test2 = new teste2();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            if (txtQtdLista.Text != "Quantidade" && txtQtdLista.Text != string.Empty)
            {
                int QtdLista = Convert.ToInt32(txtQtdLista.Text);

                txtResultList.Text = String.Join(Environment.NewLine, Test2.CriarLista(QtdLista));

            }
        }

        protected void btnOrdenarList_Click(object sender, EventArgs e)
        {
            string val = txtValores.Text;
            if (val.ToString() != "Valores" && val.ToString() != string.Empty)
            {
                int[] numbers = val.Split(',').Select(n => Convert.ToInt32(n)).ToArray();

                txtResultOrdenar.Text = String.Join(Environment.NewLine, Test2.OrdenarLista(numbers));
            }
        }
    }
}
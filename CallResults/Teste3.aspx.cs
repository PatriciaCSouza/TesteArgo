using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TesteArgo;

namespace CallResults
{
    public partial class Teste3 : System.Web.UI.Page
    {
        teste3 Test3 = new teste3();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnList_Click(object sender, EventArgs e)
        {
           txtResultMaiuscula.Text = Test3.NomesComPrimeirasLetrasMaiusculas(txtNome.Text);
        }

        protected void btnFullName_Click(object sender, EventArgs e)
        {
            txtResultFullName.Text = Test3.RemoverNomeDoMeio(txtFullName.Text);
        }
    }
}
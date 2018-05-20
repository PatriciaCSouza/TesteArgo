using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TesteArgo;

namespace CallResults
{
    public partial class Teste4 : System.Web.UI.Page
    {
        teste4 Test4 = new teste4();
        public String strImageURL;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnListFilme_Click(object sender, EventArgs e)

        {

            var Filme = new List<Filme>();

            if (txtFiltro.Text != string.Empty)
            {
                Filme = Test4.ListarFilmes(txtFiltro.Text);
            }


            else if (txtFilmId.Text != string.Empty)
            {
                txtFiltro.Text = string.Empty;
                Filme.Clear();
                Filme.Add(Test4.ListarPorId(txtFilmId.Text));
            }


            this.rptFilm.DataSource = Filme;
            this.rptFilm.DataBind();

        }

    }
}
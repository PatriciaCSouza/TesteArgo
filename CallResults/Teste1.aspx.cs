using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TesteArgo;

namespace CallResults
{
    public partial class About : Page
    {
        teste1 Test1 = new teste1();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSum_Click(object sender, EventArgs e)
        {

            int number1 = txtFirstNumber.Text == string.Empty || txtFirstNumber.Text == "First Number" ? 0 : Convert.ToInt32(txtFirstNumber.Text);
            int number2 = txtSecondNumber.Text == string.Empty || txtSecondNumber.Text == "Second number" ? 0 : Convert.ToInt32(txtSecondNumber.Text);

            txtResultSum.Text = Test1.Somar(number1, number2).ToString();
        }

        protected void btnSubtrair_Click(object sender, EventArgs e)
        {
            int number1 = txtFirstNumberSubtrair.Text == "First Number" || txtFirstNumberSubtrair.Text == string.Empty ? 0 : Convert.ToInt32(txtFirstNumberSubtrair.Text);
            int number2 = txtSecondNumberSubtrair.Text == "Second number" || txtSecondNumberSubtrair.Text == string.Empty ? 0 : Convert.ToInt32(txtSecondNumberSubtrair.Text);

            txtResultSubtracao.Text = string.Empty;
            txtResultSubtracao.Text = Test1.Subtrair(number1, number2).ToString();
        }

        protected void btnMedia_Click(object sender, EventArgs e)
        {
            string s1 = txtNumberMedia.Text;
            int[] numbers;

            if (s1.ToString() != "Numbers" && s1.ToString() != string.Empty)
            {
                numbers = s1.Split(',').Select(n => Convert.ToInt32(n)).ToArray();

                txtResultMedia.Text = string.Empty;
                txtResultMedia.Text = Test1.Media(numbers).ToString();
            }
        }

        protected void btnIdade_Click(object sender, EventArgs e)
        {

            int ano = Convert.ToInt32(txtAno.Text);
            int mes = Convert.ToInt32(txtMes.Text);
            int dia = Convert.ToInt32(txtDia.Text);

            txtResultIdade.Text = Test1.CalcularIdade(ano, mes, dia).ToString();

        }
    }
}
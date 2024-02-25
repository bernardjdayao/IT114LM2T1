using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            int num = int.Parse(percentageGrade.Text);
            if (num >= 96)
            {
                finalGrade.Text = "You have a final grade of 1.00";
                Response.Write("<script>alert('Congratulation! You are outstanding!')</script>");
            }
            else if (num < 96 && num >= 91.5)
            {
                finalGrade.Text = "1.25";
            }
            else if (num < 91.5 && num >= 87)
            {
                finalGrade.Text = "1.5";
            }
            else if (num < 87 && num >= 82.5)
            {
                finalGrade.Text = "1.75";
            }
            else if (num < 82.5 && num >= 78)
            {
                finalGrade.Text = "2.00";
            }
            else if (num < 78 && num >= 73.5)
            {
                finalGrade.Text = "2.25";
            }
            else if (num < 73.5 && num >= 69)
            {
                finalGrade.Text = "2.50";
            }
            else if (num < 69 && num >= 64.5)
            {
                finalGrade.Text = "2.75";
            }
            else if (num < 64.5 && num >= 60)
            {
                finalGrade.Text = "3.00";
            }
            else
            {
                finalGrade.Text = "5.00";
            }
        }

        protected void percentageGrade_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
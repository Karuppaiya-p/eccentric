using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class login1_forgetofpassword : System.Web.UI.Page
{
    SqlConnection cn1 = new SqlConnection(@"Data Source=.\sqlexpress; Database=eccentric; Integrated Security=true");
    SqlCommand cmd1 = new SqlCommand();
    SqlDataReader dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void findbtn_Click(object sender, EventArgs e)
    {
        try
        {
            cn1.Open();
            cmd1.CommandText = "select password,answer,Dateofbirth from usersdetails where answer='" + Texhint.Text + "' and Dateofbirth='" + Texbith.Text + "'";
            cmd1.Connection = cn1;
            dr1 = cmd1.ExecuteReader();
            dr1.Read();
            if (dr1.HasRows)
            {
                if (Texhint.Text == dr1["answer"].ToString() && Texbith.Text == dr1["Dateofbirth"].ToString())
                {
                    passlab.Visible = true;
                    Texpass.Visible = true;
                    Texpass.Text = dr1["password"].ToString();
                }
                else
                {
                    sorylab.Visible = true;
                    Texhint.Text = " ";
                    Texbith.Text = " ";
                }

            }
        }

        catch (Exception ex)
        {
            sorylab.Visible = true;
            sorylab.Text = ex.Message;
            passlab.Visible = false;
            Texpass.Visible = false;

        }
        finally
        {
            cn1.Close();
        }

    }
    protected void okbtn_Click(object sender, EventArgs e)
    {
        Texhint.Text = " ";
        Texbith.Text = " ";
        Response.Redirect("homelogin.aspx");
    }
}

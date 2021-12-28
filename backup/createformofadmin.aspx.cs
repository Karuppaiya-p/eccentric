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

public partial class createformofadmin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS; Database=eccentric; Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        try
        {
            //string date = DateTime.Now.ToString();
            cn.Open();

            cmd.CommandText = "insert into forums values('" + TextBox1.Text + "','" + Session["username"].ToString() + "','" + Session["authority"].ToString() + "','" + txtfree.Text + "','" + DateTime.Now.ToShortDateString() + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            TextBox1.Text = " ";

        }
        catch (Exception ex)
        {
            Label3.Visible = true;
            Label3.Text = ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }





    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/forumofadmin.aspx");
    }
}

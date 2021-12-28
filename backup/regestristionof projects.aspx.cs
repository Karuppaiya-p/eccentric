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
public partial class regestristionof_projects : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS; Database=eccentric; Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
        
    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
            cn.Open();

            cmd.CommandText = "insert into projectdetails values('" +txtPName.Text + "','" + txtPStatus.Text + "','" + txtSDate.Text + "','" + txtCDate.Text + "','"+txtCName.Text +"','"+ddlocation.SelectedItem.Text+"','"+txtPDescription.Text+"','"+txtAdI.Text+"')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
          

        }
        catch (Exception ex)
        {
            Label10.Visible = true;
            Label10.Text = ex.Message;
            
        }
        finally
        {
            cn.Close();
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtSDate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;

    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtCDate.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/administrationpageofprojects.aspx");
    }
}

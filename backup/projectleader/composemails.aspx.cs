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

public partial class composemails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS; Database=eccentric; Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Textfrom.Text = Session["username"].ToString();
        Textfrom.Enabled = false;
    }
    protected void Butsend_Click(object sender, EventArgs e)
    {
        try
        {
            
            cn.Open();

            cmd.CommandText = "insert into inbox values('" + Textto.Text + "','"+ Session["username"].ToString()+"','" + Textsubject.Text + "','" + txtfree.Text + "','" + DateTime.Now.ToString() + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
          
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
        try
        {

            cn.Open();

            cmd.CommandText = "insert into sentitems values('" + Textto.Text + "','" + Session["username"].ToString() + "','" + Textsubject.Text + "','" + txtfree.Text + "','" + DateTime.Now.ToString() + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            

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

        Textto.Text = " ";
        Textsubject.Text = " ";
        txtfree.Text = " ";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            cn.Open();

            cmd.CommandText = "insert into inbox values('" + Textto.Text + "','" + Textsubject.Text + "','" + txtfree.Text + "','" + DateTime.Now.ToShortDateString() + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            Textto.Text = " ";

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
        try
        {

            cn.Open();

            cmd.CommandText = "insert into sentitems values('" + Textto.Text + "','" + Session["username"].ToString() + "','" + Textsubject.Text + "','" + txtfree.Text + "','" + DateTime.Now.ToString() + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();


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
        Textto.Text = " ";
        Textsubject.Text = " ";
        txtfree.Text = " ";
    }
    protected void Butdiscard_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectleader/inboxofadmin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projectleader/inboxofadmin.aspx");
    }

    
}

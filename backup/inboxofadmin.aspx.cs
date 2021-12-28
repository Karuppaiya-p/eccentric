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

public partial class inboxofadmin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS; Database=eccentric; Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;
    SqlDataReader dr;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            binddata();
        }
    }
    public void binddata()
    {
        try
            {
                cn.Open();
                da = new SqlDataAdapter("select from1,subject,date,mailid from inbox where to1='" + Session["username"].ToString() + "'", cn);
                da.Fill(ds, "inbox");
                GridViewmail.DataSource = ds.Tables[0];
                GridViewmail.DataBind();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
            }
            finally
            {
                cn.Close();
            }
    }

    protected void Butdelete_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label mailid;
        foreach(GridViewRow gi in GridViewmail.Rows)
        {
            chk=(CheckBox)gi.FindControl("CheckBox1");
                
            if(chk.Checked==true)
            {
                mailid = (Label)gi.FindControl("Label1");
               
                 try
                {
                     cn.Open();
                     cmd.CommandText="delete inbox where mailid='"+ mailid.Text+"'";
                     cmd.Connection=cn;
                     cmd.ExecuteNonQuery();
                 }
                catch (Exception ex)
                  {
                    Label1.Text = ex.Message;
                  }
              finally
                 {
                     cn.Close();
                 }
             }
            
         }

        
             binddata();
         
    }
    protected void Butdelete1_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label mailid;
        foreach (GridViewRow gi in GridViewmail.Rows)
        {
            chk = (CheckBox)gi.FindControl("CheckBox1");

            if (chk.Checked == true)
            {
                mailid = (Label)gi.FindControl("Label1");

                try
                {
                    cn.Open();
                    cmd.CommandText = "delete inbox where mailid='" + mailid.Text + "'";
                    cmd.Connection = cn;
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }
                finally
                {
                    cn.Close();
                }
            }

        }


        binddata();
    }
    
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton sub = (LinkButton)GridViewmail.FindControl("LinkButton1");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            da = new SqlDataAdapter("select from1,subject,date,mailid from inbox where from1='" + TextBox1.Text  + "'", cn);
            da.Fill(ds, "inbox");
            GridViewmail.DataSource = ds.Tables[0];
            GridViewmail.DataBind();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
            Label1.Visible = true;
        }
        finally
        {
            cn.Close();
        }

    }
}



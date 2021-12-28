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

public partial class peoplefinderadmin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS; Database=eccentric; Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da, da1;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
      
        protected void  btnsearch_Click(object sender, EventArgs e)
          {

              
                  try
                  {
                      cn.Open();
                      da = new SqlDataAdapter("select firstname,lastname,username,authority,phoneno,email,Dateofbirth,location from usersdetails where username='" + TextBox1.Text + "'", cn);
                      da.Fill(ds, "usersdetails");
                      GridViewofusers.DataSource = ds.Tables[0];
                      GridViewofusers.DataBind();
                      if (GridViewofusers.Rows.Count <= 0)
                      {
                          if (Label1.Visible == false ||Label1.Visible==true)
                          {
                              Label1.Visible = true;
                              
                          }
                          Label1.Text = "No Records are Found";
                      }
                      else
                      {
                          Label1.Text = " ";

                      }

                  }
                  catch (Exception ex)
                  {
                      messagelab.Visible = true;
                      messagelab.Text = ex.Message;
                  }
                  finally
                  {
                      cn.Close();
                  }
                 
             
}
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        try
        {
            cn.Open();
            da1 = new SqlDataAdapter("select firstname,lastname,username,authority,phoneno,email,Dateofbirth,location from usersdetails ", cn);
            da1.Fill(ds1, "usersdetails");
            GridViewofusers.DataSource = ds1.Tables[0];
            GridViewofusers.DataBind();

        }
        catch (Exception ex)
        {
            messagelab.Visible = true;
            messagelab.Text = ex.Message;
        }
        finally
        {
            cn.Close();
        }

    }
}
       
   


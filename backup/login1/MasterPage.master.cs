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

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress; Database=eccentric; Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    public string username,password;
    protected void Page_Load(object sender, EventArgs e)
    {
       Label4.Text = DateTime.Now.ToString();       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            cn.Open();
            cmd.CommandText = "select username,password,authority from usersdetails where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";
            cmd.Connection = cn;
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {    
                 username=dr["username"].ToString();
                 password=dr["password"].ToString();
                 Session["username"] = dr["username"].ToString();
                 Session["authority"] = dr["authority"].ToString();
                 string authority = dr["authority"].ToString();
                 if (authority == "Admin")
                {
                    Response.Redirect("~/projects.aspx");
                }else
                    if (authority == "Project Leader")
                    {
                        Response.Redirect("~/projectleader/projects.aspx");
                    }
                    else
                        if (authority == "Project Member")
                        {
                            Response.Redirect("~/projectmembers/projects.aspx");
                        }
                        else
                            if (authority == "Client")
                            {
                                Response.Redirect("~/projectclients/projects.aspx");
                            }
                    
            }
        }
        catch(Exception  ex) 
        {
            Label5.Text = ex.Message;
            Label5.Visible = true;
        }
        finally
        {
            cn.Close();
           txtusername.Text = " ";
            txtpassword.Text = " ";
        }
    }
        
                   
    

    protected void aboulinkbut_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login1/aboutlogin1.aspx");
    }
    protected void forgetlinkbut_Click(object sender, EventArgs e)
    {
        //Label1.Visible = false;
        //Label2.Visible = false;
        //txtusername.Visible = false;
        //txtpassword.Visible = false;
        
        Response.Redirect("~/login1/forgetofpassword.aspx");

    }


}

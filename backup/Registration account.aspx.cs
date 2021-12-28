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

public partial class Registration_account : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data source=.\\sqlexpress;Database=eccentric;Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Page.IsPostBack)
        {
            try
            {
                cn.Open();
                cmd.CommandText = "select username  from usersdetails where username='" + txtdesired.Text+"@eccentric.com" + "'";
                cmd.Connection = cn;
                dr = cmd.ExecuteReader();
                dr.Read();
                if (dr.HasRows)
                {
                    if (txtdesired.Text == dr["username"].ToString())
                    {
                        Label19.Visible = true;
                        Label19.Text = "Sorry it is already exist";

                    }
                    
                }
                else
                {
                    Label19.Visible = true;
                    Label19.Text = "ok continue";
                }
            }
            catch (Exception ex)
            {
                Label19.Visible = true;
                Label19.Text = ex.Message;
            }
            finally
            {
                cn.Close();
            }

        }

         
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            try
            {
                cn.Open();
                cmd.CommandText = "Insert into usersdetails (firstname,lastname,username,authority,phoneno,Dateofbirth,password,securityquestion,answer,email,location) values('" + txtFirst.Text + "','" + txtlast.Text + "','" + txtdesired.Text+"@eccentric.com"+"','" +DropDownList1.SelectedItem.Text + "','" + txtphone.Text + "','" + txtdob.Text + "','" + txtcpassword.Text + "','" + ddquestion.SelectedItem.Text + "','" + txtanswer.Text + "','" + txtsecondary.Text + "','" + ddlocation.SelectedItem.Text + "')";
                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Label19.Text = ex.Message;

            }
            finally
            {
                cn.Close();
            }

        }
        txtFirst.Text = " ";
        txtlast.Text = " ";
        txtdesired.Text = " ";
        txtphone.Text = " ";
        txtdob.Text = " ";
        txtcpassword.Text=" ";
        txtanswer.Text="";
        txtsecondary.Text="";

    }

    protected void BtnBack_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {//string client = ;
            //string employee = ;
            if (Session["fromclient"].ToString() == "yes")
            {
                Response.Redirect("~/administrationpageofclients.aspx");
            }
            else
                if (Session["fromemployee"].ToString() == "yes")
                {
                    Response.Redirect("~/administrationpageofemployee.aspx");
                }
        }  

    }
}

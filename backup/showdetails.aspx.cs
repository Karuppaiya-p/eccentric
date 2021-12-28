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

public partial class showdetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\sqlexpress;Database=eccentric;Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {

            cn.Open();
            cmd.CommandText = "select firstname,lastname,username,authority,phoneno,email,dateofBirth,password,securityquestion,answer,location  from usersdetails where username='" + Session["username"].ToString() + "'";
            cmd.Connection = cn;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtFirst.Text = dr["firstname"].ToString();
                txtlast.Text = dr["lastname"].ToString();
                txtdesired.Text = dr["username"].ToString();
                ListBoxauthority.SelectedValue = dr["authority"].ToString();
                txtphone.Text = dr["phoneno"].ToString();
                txtdob.Text = dr["dateofBirth"].ToString();
                txtcpassword.Text = dr["password"].ToString();
                ddquestion.SelectedValue = dr["securityquestion"].ToString();
                txtanswer.Text = dr["answer"].ToString();
                txtsecondary.Text = dr["email"].ToString();
                ddlocation.SelectedValue = dr["location"].ToString();
            }
            txtFirst.Enabled = false;
            txtlast.Enabled = false;
            txtdesired.Enabled = false;
            ListBoxauthority.Enabled = false;
            txtphone.Enabled = false;
            txtdob.Enabled = false;
            txtcpassword.Enabled = false;
            ddquestion.Enabled = false;
            txtanswer.Enabled = false;
            txtsecondary.Enabled = false;
            ddlocation.Enabled = false;
            txtreenter.Enabled = false;
            cn.Close();
        }
    }
    
        
       

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {

            try
            {
                cn.Open();
                cmd.CommandText = "update usersdetails set firstname='" + txtFirst.Text + "',lastname='" + txtlast.Text + "',authority='" + ListBoxauthority.SelectedItem.Text + "',phoneno='" + txtphone.Text + "',email='" + txtsecondary.Text + "' ,Dateofbirth='" + txtdob.Text + "',password='" + txtcpassword.Text + "',securityquestion='" + ddquestion.SelectedItem.Text + "',answer='" + txtanswer.Text + "',location='" + ddlocation.SelectedItem.Text + "' where username='" + txtdesired.Text + "'";
                cmd.Connection = cn;
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Label18.Visible = true;
                Label18.Text = ex.Message;
            }
            finally
            {
                cn.Close();
            }

        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (Page.IsPostBack)
        //{
            try
            {
                cn.Open();
                cmd.CommandText = "select username  from usersdetails where username='" + txtdesired.Text + "@eccentric.com" + "'";
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

        //}
    }
    
        
   
protected void  Button3_Click1(object sender, EventArgs e)
{
    Label9.Visible = true;
        txtreenter.Visible = true;
        CompareValidator2.Visible = true;

        txtFirst.Enabled = true;
        txtlast.Enabled = true;
        txtdesired.Enabled = true;
        txtphone.Enabled = true;
        txtphone.Enabled = true;
        ListBoxauthority.Enabled = true;
        txtphone.Enabled = true;
        txtphone.Enabled = true;
        txtdob.Enabled = true;
        txtcpassword.Enabled = true;
        ddquestion.Enabled = true;
        txtanswer.Enabled = true;
        txtsecondary.Enabled = true;
        ddlocation.Enabled = true;
        txtreenter.Enabled = true;
    }
    protected void Butback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/projects.aspx");
    }
}

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

public partial class showinboxmes : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress; Database=eccentric; Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        
       
       
        
                Label1.Text = Request["subject"].ToString();
        

       //Textmessage.Text = Session["messages"].ToString();

        message();


    }

    public void message()
    {
        try
        {
            cn.Open();
            cmd.CommandText = "select subject,messages,from1 from inbox where subject='" + Label1.Text + "'";
            cmd.Connection = cn;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
               Textmessage.Text = dr["messages"].ToString();
               Textmessage.ReadOnly = true;
               TextBox1.Text = dr["from1"].ToString();
               TextBox1.ReadOnly = true;
               Label1.Text = dr["subject"].ToString();
            }
        }
        catch (Exception ex)
        {
         
        }
        finally
        {
            cn.Close();
         
        }
    
    
    
      }
   

    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    if (Session["frominbox"].ToString() == "yes")
    //    {
    //        Response.Redirect("~/inboxofadmin.aspx");
    //        Label1.Text = " ";
    //        Textmessage.Text = " ";
    //    }
    //    else
    //        if (Session["fromsentitems"].ToString() == "yes")
    //        {
    //            Response.Redirect("~/adminsentitems.aspx");
    //            Label1.Text = " ";
    //            Textmessage.Text = " ";
    //        }

    //}
}

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

public partial class newsinadmin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS; Database=eccentric; Integrated Security=true");
    SqlCommand cmd=new SqlCommand();
    SqlDataAdapter da;
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    binddata();
        //}


    }
    //private void binddata()
    //{
    //    try
    //    {
    //        cn.Open();
    //        da = new SqlDataAdapter("select subject,username,authority,message,dateofpost from news", cn);
    //        da.Fill(ds, "news");
    //        DetailsView1.DataSource = ds.Tables[0];
    //        DetailsView1.DataBind();
    //    }
    //    catch (Exception ex)
    //    {
    //        Label6.Text = ex.Message;
    //    }
    //    finally
    //    {
    //        cn.Close();
    //    }
    //}


              
   
protected void  LinkButton1_Click(object sender, EventArgs e)
{
    Response.Redirect("creatnewsforadmin.aspx");
}

    //protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    //{
    //    DetailsView1.PageIndex = e.NewPageIndex;
    //    binddata();
    //}

    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
        
    //}

    //protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    //{
    //    string news = "subject";
    //    try
    //    {
            
    //        cn.Open();
    //        cmd.CommandText = "delete news where subject='+news1+'";
    //        cmd.Connection = cn;
    //        cmd.ExecuteNonQuery();

    //    }
    //    catch (Exception ex)
    //    {
    //        Label6.Text = ex.Message;
    //    }
    //    finally
    //    {
    //        cn.Close();
    //    }
    //    binddata();


    //}
    //protected void LinkButton1_Click1(object sender, EventArgs e)
    //{

    //    try
    //    {
    //        string news = DetailsView1.Rows[e.RowIndex].Cells[0].Text;
    //        cn.Open();
    //        cmd.CommandText = "delete news where curentpostion=" + +"";
    //        cmd.Connection = cn;
    //        cmd.ExecuteNonQuery();

    //    }
    //    catch (Exception ex)
    //    {
    //        Label6.Text = ex.Message;
    //    }
    //    finally
    //    {
    //        cn.Close();
    //    }

    //}

    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        try
        {

            cn.Open();
            cmd.CommandText = "delete news where subject='"+e.Keys[0]+"'";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();

        }
        catch (Exception ex)
        {
            Label6.Text = ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }
}   


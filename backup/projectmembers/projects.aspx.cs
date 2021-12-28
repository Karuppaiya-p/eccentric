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

public partial class projects : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS; Database=eccentric; Integrated Security=true");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da,da1;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        
            showmile();
            showactivites();
        

    }
    private void showmile()
    {
        try
        {
            cn.Open();
            da = new SqlDataAdapter("select projectid,projectname,projectstatus,startdate,complectiondate,clientname from projectdetails", cn);
            da.Fill(ds, "projectdetails");
            GridViewmile.DataSource = ds.Tables[0];
            GridViewmile.DataBind();
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
    private void showactivites()
    {

        try
        {
            cn.Open();
            da1 = new SqlDataAdapter("select projectname,projectstatus,startdate,complectiondate,clientname from projectdetails", cn);
            da1.Fill(ds1, "projectdetails");
            GridViewactivi.DataSource = ds1.Tables[0];
            GridViewactivi.DataBind();
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

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
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Text;
public partial class Default5 : System.Web.UI.Page
{
    public static string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    SqlConnection con = new SqlConnection(strcon);
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void gvbind()
    {
        Button1.Visible = true;
        Button2.Visible = true;
        SqlCommand cmd = new SqlCommand("select iuserid,struser,struser_role,struser_status from tbl_login_mstr", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {      
        foreach (GridViewRow item in GridView1.Rows)
        {
            con.Open();
            string a;
            int b;
            DropDownList ddl1 = (DropDownList)item.FindControl("DropDownList1");
            DropDownList ddl2 = (DropDownList)item.FindControl("DropDownList2");                     
            Label lb1 = (Label)item.FindControl("Label10");
            SqlCommand cmd = new SqlCommand("dbo.removeusergrid", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@struser_role", ddl1.SelectedValue);
            cmd.Parameters.AddWithValue("@struser_status", ddl2.SelectedValue);
            cmd.Parameters.AddWithValue("@iuserid", lb1.Text);
            cmd.ExecuteNonQuery();
            Label12.Visible = true;
            Label12.Text = " User records updated ";
            con.Close();
        }
        gvbind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {        
        gvbind();
        Button3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx"); //admin page
    }
}
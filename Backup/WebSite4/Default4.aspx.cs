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
public partial class Default4 : System.Web.UI.Page
{
    public static string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    SqlConnection con = new SqlConnection(strcon);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string a, b;
        string query1 = "dbo.createuser1";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        cmd1.CommandType = System.Data.CommandType.StoredProcedure;
        cmd1.Parameters.AddWithValue("@iuserid", Convert.ToInt32(TextBox1.Text));
        cmd1.Parameters.AddWithValue("@empname", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@role", DropDownList1.SelectedValue);
        a = Encryptdata("scope@123");
        cmd1.Parameters.AddWithValue("@pwdd", a);
        b = cmd1.ExecuteScalar().ToString();
        if (b == "0")
        {
            Label13.Visible = true;
            Label13.Text = "User created";       
        }
        else if (b == "1")
        {
            Label13.Visible = true;
            Label13.Text = "User ID already exists";
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx"); //admin page
    }
}
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
public partial class _Default : System.Web.UI.Page
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
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label6.Visible = true;
            Label6.Text = "Please enter an UserID and password";
            return;
        }
        else
        {
            string a;
            string query = "dbo.checklogin1";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@iuserid", TextBox1.Text);
            string encpwd1 = Encryptdata(TextBox2.Text);
            cmd.Parameters.AddWithValue("@strpassword", encpwd1);
            a = cmd.ExecuteScalar().ToString();
            if (a == "1")
            {
                Label6.Visible = true;
                Label6.Text = "Login Successfull!";
                string query1 = "dbo.namelogin2";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                SqlDataReader dr;
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@iuserid", TextBox1.Text);              
                dr = cmd1.ExecuteReader();
                if (dr.Read())
                {
                    Session["ID"] = dr["iuserid"].ToString();
                    Session["username"] = dr["struser"].ToString();
                    Session["role"] = dr["struser_role"].ToString();

                    /*
                     if(dr["struser_role"].ToString() == "Admin")
                         Response
                     else if(dr["struser_role"].ToString() == "Developer")
                         Response
                     else if(dr["struser_role"].ToString() == "Tester")
                         Response
                    */
                    
                }
                Response.Redirect("Default3.aspx");               
            }
            else if (a == "0")
            {
                Label6.Visible = true;
                Label6.Text = "Unauthorised Login";
            }
            else if (a == "2")
            {
                Label6.Visible = true;
                Label6.Text = "Invalid UserID or Password";                
            }
        }
        con.Close();
    }
}
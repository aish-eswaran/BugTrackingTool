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
public partial class Default3 : System.Web.UI.Page
{
    public static string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    SqlConnection con = new SqlConnection(strcon);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtOld.Text = "";
            txtNew.Text = "";
            txtConfirm.Text = "";
            Label12.Text = Session["username"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string a;
        string query = "dbo.oldpwd2";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@userid", Convert.ToInt32(Session["ID"]));
        string encpwd1 = Encryptdata(txtOld.Text);
        cmd.Parameters.AddWithValue("@oldpd",encpwd1);
        a = cmd.ExecuteScalar().ToString();
        if (a == "1")
        {       
                Label10.Visible=true;
                Label10.Text="Password Change Successful";
                string query1="dbo.pwdchange2";
                SqlCommand cmd1 = new SqlCommand(query1,con);
                cmd1.CommandType=System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@userid1",Convert.ToInt32(Session["ID"]));
                string encpwd = Encryptdata(txtConfirm.Text);
                cmd1.Parameters.AddWithValue("@newpd",encpwd);
                cmd1.ExecuteNonQuery();
            /*
                if(Session["role"].ToString() == "Admin")
                    Response
                else if(Session["role"].ToString() == "Developer")
                    Response
                else if(Session["role"].ToString() == "Tester")
                    Response
               */  
        }
        else if (a == "0")
        {   
            Label10.Visible=true;
            Label10.Text="Your old password doesnot match";
        }
        con.Close();
    }
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
    private string Decryptdata(string encryptpwd)
    {
        string decryptpwd = string.Empty;
        UTF8Encoding encodepwd = new UTF8Encoding();
        Decoder Decode = encodepwd.GetDecoder();
        byte[] todecode_byte = Convert.FromBase64String(encryptpwd);
        int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
        char[] decoded_char = new char[charCount];
        Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
        decryptpwd = new String(decoded_char);
        return decryptpwd;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtOld.Text = "";
        txtNew.Text = "";
        txtConfirm.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        /*
                if(Session["role"].ToString() == "Admin")
                    Response
                else if(Session["role"].ToString() == "Developer")
                    Response
                else if(Session["role"].ToString() == "Tester")
                    Response
               */  
    }
}
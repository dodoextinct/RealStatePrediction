using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Drawing; 

public partial class _Default : System.Web.UI.Page 
{

    SqlConnection cn = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUName.Focus();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RealEstate.mdf;Integrated Security=True;User Instance=True");
        cn.Open();
        string unm = txtUName.Text.Trim();
        string pwd = txtPwd.Text.Trim();  
        cmd = new SqlCommand("Select * From Admin Where User_Name='"+unm+"' And Password='"+pwd+"' ",cn);
        dr = cmd.ExecuteReader();
        if(dr.HasRows==true)
        {
            dr.Read();
            Session.Add("unm", unm);
//            Session.Remove("unm");  
            dr.Close();
            cn.Close();

            Response.Redirect("Admin.aspx"); 
        }
        else
        {
            dr.Close();
            cn.Close();
            lblInvalid.Text = "Invalid User Name Or Password";
            lblInvalid.ForeColor = Color.Red;
            txtUName.Focus(); 
        }
    }
}

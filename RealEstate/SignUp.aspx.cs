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
using System.Drawing; 

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection cn = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtPin.Attributes["onkeypress"] = "return numValid()";
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RealEstate.mdf;Integrated Security=True;User Instance=True");
        if (!IsPostBack)
            ddlMemType.Focus();
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string mtype = ddlMemType.SelectedValue;
        string uid = txtUName.Text;
        string pwd = txtPwd.Text;
        string nm = txtName.Text;
        string addr = txtAddress.Text;
        string city = txtCity.Text;
        int pin = (txtPin.Text==""?0:Convert.ToInt32(txtPin.Text));
        string phno = txtPhno.Text;
        string mob = txtMobile.Text;
        string email = txtEmail.Text;
        string occu = ddlOccu.SelectedValue;
        string caste = txtCaste.Text;

        cn.Open();
        cmd = new SqlCommand("Select * From Member_Master Where User_Id='" + uid + "'", cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Close();
            cn.Close();
            lblDuplicate.Text = "User Name Already Exist";
            lblDuplicate.ForeColor = Color.Red; 
            txtUName.Focus(); 
        }
        else
        {
            dr.Close();
            cmd = new SqlCommand("Insert Into Member_Master Values('" + mtype + "','" + uid + "','" + pwd + "','" + nm + "','" + addr + "','" + city + "'," + pin + ",'" + phno + "','" + mob + "','" + email + "','" + occu + "','" + caste + "')", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Login.aspx");
        }
    }
}

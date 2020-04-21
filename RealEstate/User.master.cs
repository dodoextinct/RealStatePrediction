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

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            lnkRegister.Visible = true;
            lnkRequest.Visible = false;
            lnkLogin.Text = "Login";
            lblUser.Text = "Guest";
            lnkChngPwd.Visible = false; 
        }
        else
        {
            lnkRegister.Visible = false;
            lnkRequest.Visible = true;
            lnkChngPwd.Visible = true;
            lnkLogin.Text = "Logout";
            lblUser.Text = Session["uid"].ToString();

        }
    }
    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["area"] = e.CommandArgument.ToString();
        Response.Redirect("DetailView.aspx");
    }

}

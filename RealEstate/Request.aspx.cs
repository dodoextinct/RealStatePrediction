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

public partial class Request : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlArea.Attributes["onchange"] = "OtherSel()";
        if (Session["memid"] == null)
            Response.Redirect("Login.aspx");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string tdate = DateTime.Now.ToShortDateString();
        int memid = int.Parse(Session["memid"].ToString());
        string trantype = "P";
        int eid = 0;
        string area = ddlArea.SelectedValue;
        string type = ddlType.SelectedValue;
        string cnst = ddlConstruction.SelectedValue;
        int budget = int.Parse(ddlBudget.SelectedValue); 
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RealEstate.mdf;Integrated Security=True;User Instance=True");
        //cn = new SqlConnection("Data Source=localhost;Initial Catalog=REALESTATE;Integrated Security=True");
        cn.Open();
        cmd = new SqlCommand("Select * From Transaction_Master Where Member_Id=" + memid + " And Purchase_Area='" + area + "' And Purchase_Type='" + type + "' And Construction='" + cnst + "' And Estimate_Budget="+budget, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
           dr.Read();
           lblDuplicate.Text = "Request Already Entered Dated " + dr.GetDateTime(1).Day.ToString() + "/" + dr.GetDateTime(1).Month.ToString() + "/" + dr.GetDateTime(1).Year.ToString();
           lblDuplicate.ForeColor = System.Drawing.Color.Red; 
           dr.Close();
           cn.Close();
        }
        else
        {
            dr.Close();
            cmd = new SqlCommand();
            cmd.CommandText = "Insert Into Transaction_Master Values('" + tdate + "'," + memid + ",'" + trantype + "'," + eid + ",'" + area + "','" + type + "','" + cnst + "'," + budget + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("RequestView.aspx");
        }
    }
}

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

public partial class EstateDetail : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["eid"] == null)
                Response.Redirect("Default.aspx");
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("Login.aspx");
        
        string tdate = DateTime.Now.ToShortDateString();
        int memid = int.Parse(Session["memid"].ToString());
        string trantype = "P";
        int eid = int.Parse(Session["eid"].ToString());
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RealEstate.mdf;Integrated Security=True;User Instance=True");
        //cn = new SqlConnection("Data Source=localhost;Initial Catalog=REALESTATE;Integrated Security=True");
        cn.Open();
        cmd = new SqlCommand("Select * From Estate_Master Where Estate_Id=" + eid, cn);
        dr = cmd.ExecuteReader();
        dr.Read();
        string area = dr["Area"].ToString();
        string type = dr["Type"].ToString();
        string cnst = dr["Construction"].ToString();
        int budget = int.Parse(dr["Aprox_Price"].ToString());
        if (budget < 1000000)
            budget = 1;
        else if (budget >= 1000000 && budget < 1500000)
            budget = 2;
        else if (budget >= 1500000 && budget < 2000000)
            budget = 3;
        else if (budget >= 2000000 && budget < 2500000)
            budget = 4;
        else if (budget >= 2500000 && budget < 3000000)
            budget = 5;
        else if (budget >= 3000000)
            budget = 6;
        dr.Close();
        cmd = new SqlCommand("Select * From Transaction_Master Where Member_Id=" + memid + " And Estate_Id="+eid, cn);
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

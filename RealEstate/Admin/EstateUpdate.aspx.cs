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

public partial class Admin_EstateUpdate : System.Web.UI.Page
{
    SqlConnection cn = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        uplFile.Attributes["onchange"] = "javascript:ctl00_ContentPlaceHolder1_imgPhoto.src=window.event.srcElement.value;";
        ddlArea.Attributes["onchange"] = "OtherSel()";
        optStatus.Attributes["onclick"] = "SaleSel()"; 
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RealEstate.mdf;Integrated Security=True;User Instance=True");
        if (!IsPostBack)
        {
            if (Session["eid"] == null)
                Response.Redirect("EstateView.aspx");
            cn.Open();
            cmd = new SqlCommand("Select * From Member_Master Order By Name", cn);
            dr = cmd.ExecuteReader();
            ddlMemId.Items.Add(new ListItem("--Select--", "0"));
            while (dr.Read())
                ddlMemId.Items.Add(new ListItem(dr["Name"].ToString() + "[" + dr["User_Id"].ToString() + "]", dr["Member_id"].ToString()));
            dr.Close();
            int eid = int.Parse(Session["eid"].ToString());
            cmd = new SqlCommand("Select * From Estate_Master Where Estate_Id="+eid, cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            txtEId.Text = dr["Estate_Id"].ToString();
            ddlMemId.SelectedValue = dr["Member_Id"].ToString();
            ddlArea.SelectedValue = dr["Area"].ToString();
            if (ddlArea.SelectedIndex == 0)
            {
                ddlArea.SelectedValue = "Other";
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "key", "other.style.display='block';", true);
                txtOther.Text = dr["Area"].ToString();
            }
            txtAddress.Text = dr["Address"].ToString();
            ddlType.SelectedValue = dr["Type"].ToString();
            ddlConstruction.SelectedValue = dr["Construction"].ToString();
            txtSize.Text = dr["Size"].ToString();
            txtPrice.Text = dr["Aprox_Price"].ToString();
            imgPhoto.ImageUrl = "../Images/" + dr["Estate_View"].ToString();
            optStatus.SelectedValue = dr["Sales_Status"].ToString();
            if (optStatus.SelectedValue.ToString().CompareTo("Y") == 0)
            {
                txtDate.Text = Convert.ToDateTime(dr["Status_Date"].ToString()).ToShortDateString();
                txtRemarks.Text = dr["Remarks"].ToString();
                string myscript = "sale1.style.display='block';sale2.style.display='block';";
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "k", myscript, true);
            }
            dr.Close();
            cn.Close();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int eid = int.Parse(txtEId.Text);
        string flnm = "";
        if (uplFile.FileName.ToString() != "")
        {
            flnm = uplFile.FileName.ToString();
            flnm = "E" + Convert.ToString(10000 + eid) + flnm.Substring(flnm.Length - 4);
            string path = Server.MapPath("../Images/" + flnm);
            uplFile.PostedFile.SaveAs(path);
        }
        int memid = int.Parse(ddlMemId.SelectedValue);
        string area = ddlArea.SelectedValue;
        if (ddlArea.SelectedValue.CompareTo("Other") == 0)
            area = txtOther.Text;
        string addr = txtAddress.Text.Trim();
        string type = ddlType.SelectedValue;
        string cnst = ddlConstruction.SelectedValue;
        int size = int.Parse(txtSize.Text);
        int price = int.Parse(txtPrice.Text);
        string entdt = DateTime.Now.ToShortDateString();
        string status = optStatus.SelectedValue;
        string sdate = "";
        if (status.CompareTo("Y") == 0)
            sdate = Request["ctl00$ContentPlaceHolder1$txtDate"].ToString();// txtDate.Text;
        string rem = txtRemarks.Text;
        cn.Open();
        cmd = new SqlCommand("Select * From Estate_Master Where Member_Id=" + memid + " And Area='" + area + "' And Address='" + addr + "' And Type='" + type + "' And Construction='" + cnst + "' And Size=" + size+" And Estate_Id<>"+eid, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Close();
            cn.Close();
            lblDuplicate.Text = "Estate Entry Already Exist";
            lblDuplicate.ForeColor = System.Drawing.Color.Red;
            ddlArea.Focus();
        }
        else
        {
            dr.Close();
            if(flnm!="")
                cmd = new SqlCommand("Update Estate_Master Set Member_Id="+memid+", Area='"+area+"', Address='"+addr+"', Type='"+type+"', Construction='"+cnst+"', Size="+size+", Aprox_Price="+price+", Entry_Date='"+entdt+"', Estate_View='"+flnm+"', Sales_Status='"+status+"',Remarks='"+rem+"',Status_Date='"+sdate+"' Where Estate_Id="+eid, cn);
            else
                cmd = new SqlCommand("Update Estate_Master Set Member_Id=" + memid + ", Area='" + area + "', Address='" + addr + "', Type='" + type + "', Construction='" + cnst + "', Size=" + size + ", Aprox_Price=" + price + ", Entry_Date='" + entdt + "',Sales_Status='" + status + "',Remarks='" + rem + "',Status_Date='" + sdate + "' Where Estate_Id=" + eid, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("EstateView.aspx");
        }
    }
}

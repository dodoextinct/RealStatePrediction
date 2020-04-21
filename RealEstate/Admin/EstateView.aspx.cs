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

public partial class Admin_EstateView : System.Web.UI.Page
{
    SqlConnection cn = null;
    SqlDataAdapter da = null;
    DataSet ds = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RealEstate.mdf;Integrated Security=True;User Instance=True");
        if (!IsPostBack)
            fill("");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string sq = "";
        try
        {
            if (txtEId.Text != "")
                sq = "Where Estate_Id=" + int.Parse(txtEId.Text);
            else
            {
                sq = "Where 1=1 ";
                if (ddlArea.SelectedIndex != 0)
                    sq = sq + " And Area='" + ddlArea.SelectedValue + "' ";
                if (ddlType.SelectedIndex != 0)
                    sq = sq + " And Type='" + ddlType.SelectedValue + "' ";
                if (ddlConstruction.SelectedIndex != 0)
                    sq = sq + " And Construction='" + ddlConstruction.SelectedValue + "' ";
                if (ddlStatus.SelectedIndex != 0)
                    sq = sq + " And Sales_Status='" + ddlStatus.SelectedValue + "' ";
                if (txtSize.Text != "")
                    sq = sq + " And Size = " + int.Parse(txtSize.Text);  
            }
            fill(sq);
        }
        catch (Exception er)
        {
            Response.Write("Error : " + er.Message);
        }
    }
    protected void grdView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdView.PageIndex = e.NewPageIndex;
        fill("");
    }
    protected void fill(string sq)
    {
        da = new SqlDataAdapter("Select * From Estate_Master "+sq+" Order By Area,Type,Construction,Size,Sales_Status", cn);
        ds = new DataSet();
        da.Fill(ds);
        grdView.DataSource = ds.Tables[0].DefaultView;
        grdView.AllowPaging = true;
        grdView.PageSize = 5;
        grdView.DataBind();

    }
    protected void grdView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString().CompareTo("Modify") == 0)
        {
            Session["eid"] = e.CommandArgument.ToString();
            Response.Redirect("EstateUpdate.aspx");
        }
    }
}

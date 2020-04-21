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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblEmpty.Visible = false;
        if (!IsPostBack)
        {
            if (DataList1.Items.Count == 0)
                lblEmpty.Visible = true;
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        lblEmpty.Visible = false;
        string sq = " Where Sales_Status='N' ";
        if (ddlType.SelectedIndex != 0)
            sq = sq + " And Type='" + ddlType.SelectedValue + "'";
        if (ddlConstruction.SelectedIndex != 0)
            sq = sq + " And Construction ='" + ddlConstruction.SelectedValue + "'";
        if (ddlBudget.SelectedIndex != 0)
        {
            int sl = int.Parse(ddlBudget.SelectedValue);
            switch (sl)
            {
                case 1:
                    sq = sq + " And Aprox_Price<1000000 "; break;
                case 2:
                    sq = sq + " And Aprox_Price>=1000000 And Aprox_Price<1500000 "; break;
                case 3:
                    sq = sq + " And Aprox_Price>=1500000 And Aprox_Price<2000000 "; break;
                case 4:
                    sq = sq + " And Aprox_Price>=2000000 And Aprox_Price<2500000 "; break;
                case 5:
                    sq = sq + " And Aprox_Price>=2500000 And Aprox_Price<3000000 "; break;
                case 6:
                    sq = sq + " And Aprox_Price>=3000000 "; break;
            }
        }
        SqlDataSource1.SelectCommand = "Select * From Estate_Master " + sq;
        SqlDataSource1.DataBind();
        DataList1.DataBind();
        if (DataList1.Items.Count == 0)
            lblEmpty.Visible = true; 

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["eid"] = e.CommandArgument.ToString();
        Response.Redirect("EstateDetail.aspx");

    }
}

<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language=javascript>
    function OtherSel()
    {
        var val=window.event.srcElement.value;
        if(val=='Other')
        { 
            other.style.display='block';
            document.getElementById('ctl00_ContentPlaceHolder1_txtOther').focus();
        } 
        else 
        {
            other.style.display='none';
            document.getElementById('ctl00_ContentPlaceHolder1_txtOther').value='';
        }
    }
</script>
        <table align="center" style="font-weight: bold; text-align: left;">
            <tr>
                <td align="center" colspan="3" bgcolor="#ffccff">
                    Estate Request Entry</td>
            </tr>
            <tr>
                <td>
                    Area</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlArea" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>Kalawad Road</asp:ListItem>
                        <asp:ListItem>University Road</asp:ListItem>
                        <asp:ListItem>150 ft Ring Road</asp:ListItem>
                        <asp:ListItem>Yagnik Road</asp:ListItem>
                        <asp:ListItem>Gondal Road</asp:ListItem>
                        <asp:ListItem>Dhebar Road</asp:ListItem>
                        <asp:ListItem>Kuvadava Road</asp:ListItem>
                        <asp:ListItem>Amin Marg</asp:ListItem>
                        <asp:ListItem>Raiya Road</asp:ListItem>
                        <asp:ListItem>Tagore Marg</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="ddlArea"
                        Display="Dynamic" ErrorMessage="Select Estate Area" Operator="NotEqual" SetFocusOnError="True"
                        ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr id=other style="display:none">
                <td>
                    Other Area</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtOther" runat="server" MaxLength="30" Width="187px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    Type</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlType" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>Flat</asp:ListItem>
                        <asp:ListItem>Tenament</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddlType"
                        Display="Dynamic" ErrorMessage="Select Estate Type" Operator="NotEqual" SetFocusOnError="True"
                        ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td>
                    Construction</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlConstruction" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>1 BHK</asp:ListItem>
                        <asp:ListItem>2 BHK</asp:ListItem>
                        <asp:ListItem>3 BHK</asp:ListItem>
                        <asp:ListItem>4 BHK</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="ddlConstruction"
                        Display="Dynamic" ErrorMessage="Select Estate Construction" Operator="NotEqual"
                        SetFocusOnError="True" ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td>
                    Estimate Budget</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlBudget" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select(In Lac)--</asp:ListItem>
                        <asp:ListItem Value="1">Less Than 10</asp:ListItem>
                        <asp:ListItem Value="2">10 - 15</asp:ListItem>
                        <asp:ListItem Value="3">15 - 20</asp:ListItem>
                        <asp:ListItem Value="4">20 - 25</asp:ListItem>
                        <asp:ListItem Value="5">25 - 30</asp:ListItem>
                        <asp:ListItem Value="6">More Than 30</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="ddlBudget"
                        Display="Dynamic" ErrorMessage="Select Estate Budget" Operator="NotEqual" SetFocusOnError="True"
                        ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblDuplicate" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" colspan="3" bgcolor="#ffccff">
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Text="Submit" Width="76px" OnClick="btnSubmit_Click" /></td>
            </tr>
        </table>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
</asp:Content>
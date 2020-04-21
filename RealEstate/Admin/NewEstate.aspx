<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="NewEstate.aspx.cs" Inherits="Admin_NewEstate"  %>
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
    <table align="center">
        <tr>
            <td align="center" colspan="3" bgcolor="buttonface">
                Estate Entry</td>
        </tr>
        <tr>
            <td>
                Estate Id</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtEId" runat="server" style="text-align: right" Enabled="False" Width="45px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                User Name</td>
            <td>
                :</td>
            <td>
                <asp:DropDownList ID="ddlMemId" runat="server">
                </asp:DropDownList></td>
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
                Size(Sq. Foot)</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtSize" runat="server" style="text-align: right" MaxLength="8" Width="83px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSize"
                    Display="Dynamic" ErrorMessage="Estate Size Required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSize"
                    Display="Dynamic" ErrorMessage="Invalid Estate Size" SetFocusOnError="True" ValidationExpression="[0-9.]{2,8}">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td>
                Price (Approx. In Rs.)</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server" style="text-align: right" Width="85px" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice"
                    Display="Dynamic" ErrorMessage="Estate Price Required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrice"
                    Display="Dynamic" ErrorMessage="Invalid Estate Price" SetFocusOnError="True"
                    ValidationExpression="[0-9]{5,10}">*</asp:RegularExpressionValidator></td>
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
        <tr id="other" style="display:none;">
            <td>
                Other Area</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtOther" runat="server" MaxLength="30"
                    Width="187px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                Address</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Columns="20" MaxLength="200" Rows="3" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                Photograph</td>
            <td>
                :</td>
            <td>
                <asp:Image ID="imgPhoto" runat="server" Height="100px" Width="100px" /><br />
                <asp:FileUpload ID="uplFile" runat="server" /></td>
        </tr>
        <tr>
            <td colspan="3" align=center>
                <asp:Label ID="lblDuplicate" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" align=center bgcolor="buttonface">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />&nbsp;<asp:Button
                    ID="btnBack" runat="server" CausesValidation="False" PostBackUrl="~/Admin/Admin.aspx"
                    Text="Back" Width="60px" /></td>
        </tr>
    </table>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
        ShowSummary="False" />
</asp:Content>


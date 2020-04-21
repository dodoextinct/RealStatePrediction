<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ChngPwd.aspx.cs" Inherits="Admin_ChngPwd" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="text-align: left" align=center>
        <tr>
            <td align="center" colspan="3" bgcolor="#ccccff">
                Password Change</td>
        </tr>
        <tr>
            <td>
                Old Password</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtOPwd" runat="server" TextMode="Password" Width="98px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOPwd"
                    Display="Dynamic" ErrorMessage="Old Password Required" Font-Size="10px" SetFocusOnError="True"></asp:RequiredFieldValidator>&nbsp;</td>
        </tr>
        <tr>
            <td>
                New Password</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtNPwd" runat="server" TextMode="Password" Width="98px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNPwd"
                    Display="Dynamic" ErrorMessage="New Password Required" Font-Size="10px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtOPwd"
                    ControlToValidate="txtNPwd" Display="Dynamic" ErrorMessage="Old & New Password should not be same"
                    Font-Size="10px" Operator="NotEqual" SetFocusOnError="True"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNPwd"
                    Display="Dynamic" ErrorMessage="Password must be more than 6 characters" Font-Size="10px"
                    SetFocusOnError="True" ValidationExpression="\S{6,15}"></asp:RegularExpressionValidator>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Confirm Password</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password" Width="98px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCPwd"
                    Display="Dynamic" ErrorMessage="Confirm Password Required" Font-Size="10px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNPwd"
                    ControlToValidate="txtCPwd" Display="Dynamic" ErrorMessage="Confirm Password Mismatch"
                    Font-Size="10px" SetFocusOnError="True"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblInvalid" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" bgcolor="#ccccff">
                <asp:Button ID="btnChange" runat="server" Text="Change" Width="78px" OnClick="btnChange_Click" /></td>
        </tr>
    </table>
</asp:Content>



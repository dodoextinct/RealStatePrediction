<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table align="center" style="font-weight: bold">
            <tr>
                <td align="center" colspan="3" bgcolor="inactivecaptiontext">
                    User Login</td>
            </tr>
            <tr>
                <td>
                    User Name</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtUName" runat="server" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName"
                        Display="Dynamic" ErrorMessage="User Name Required" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" ErrorMessage="Password Required" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblInvalid" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" colspan="3" bgcolor="inactivecaptiontext">
                    <asp:ImageButton ID="imgLogin" runat="server" ImageUrl="~/Images/sign_in.jpg" OnClick="imgLogin_Click" /></td>
            </tr>
        </table>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
</asp:Content>
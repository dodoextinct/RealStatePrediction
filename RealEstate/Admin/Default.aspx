<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>:: Welcome To Administrator Home Page ::</title>
<style type="text/css">
    BODY,TABLE,INPUT {font-size:12px;font-weight:bold}
    A {color:blue}
    A:hover{color:red}
</style>
</head>
<body style="margin:0" link=blue alink=blue vlink=blue>
    <form id="form2" runat="server">
    <div>
        <table style="width: 100%" border=1>
            <tr>
                <td align="center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Title.jpg" /></td>
            </tr>
            <tr>
                <td align="center" style="font-weight:normal">
                <marquee>Welcome To Administrator Login Page</marquee>
                </td>
            </tr>
            <tr>
                <td height=400 background="../Images/Back.jpg">&nbsp;
        <table align="center" style="font-weight: bold">
            <tr>
                <td align="center" colspan="3" bgcolor="#ccccff">
                    Admin Login</td>
            </tr>
            <tr>
                <td>
                    User Name</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtUName" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName"
                        Display="Dynamic" ErrorMessage="Username Required" SetFocusOnError="True">*</asp:RequiredFieldValidator>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" ErrorMessage="Password Required" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblInvalid" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" colspan="3" bgcolor="#ccccff">
                    <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Text="Login" Width="84px" OnClick="btnLogin_Click" /></td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
             </td>
            </tr>
            <tr>
                <td>&copy; All right reserved 2007-08. Contact : <a href="mailto:realestate@yahoo.co.in">realestate@yahoo.co.in</a>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

    

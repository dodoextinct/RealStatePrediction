<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <table align="center" style="font-weight: bold; text-align: left;">
            <tr>
                <td align="center" colspan="3" bgcolor="#ffccff">
                    Member Master</td>
            </tr>
            <tr>
                <td>
                    Member Type</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlMemType" runat="server">
                        <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                        <asp:ListItem>Individual</asp:ListItem>
                        <asp:ListItem>Agent/Broker</asp:ListItem>
                        <asp:ListItem>Builder/Developer</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="ddlMemType"
                        Display="Dynamic" ErrorMessage="Select Member Type" Operator="NotEqual" SetFocusOnError="True"
                        ValueToCompare="0">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td>
                    User Name</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtUName" runat="server" MaxLength="15" Width="137px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUName"
                        Display="Dynamic" ErrorMessage="User Name Required" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" ErrorMessage="Password Required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPwd"
                        Display="Dynamic" ErrorMessage="Password must be more than 6 characters" SetFocusOnError="True"
                        ValidationExpression="\S{6,15}">*</asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>
                    Confirm Password</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtCPwd" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCPwd"
                        Display="Dynamic" ErrorMessage="Confirm Password Required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
                        ControlToValidate="txtCPwd" Display="Dynamic" ErrorMessage="Confirm Password Mismatch"
                        SetFocusOnError="True">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td>
                    Name</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" MaxLength="50" Width="245px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName"
                        Display="Dynamic" ErrorMessage="Member Name Required" SetFocusOnError="True">*</asp:RequiredFieldValidator>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    Address</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" MaxLength="200" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress"
                        Display="Dynamic" ErrorMessage="Member Address Required" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    City</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity"
                        Display="Dynamic" ErrorMessage="Member City Required" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    Pincode</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtPin" runat="server" MaxLength="6" Width="74px" style="text-align: right"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPin"
                        Display="Dynamic" ErrorMessage="Invalid Pincode" SetFocusOnError="True" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>
                    Mobile No.</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtMobile" runat="server" MaxLength="15"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    Phone No.</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtPhno" runat="server" MaxLength="15"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    Email Id</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" Width="235px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                        Display="Dynamic" ErrorMessage="Invalid Email Id" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>
                    Occupation</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlOccu" runat="server">
                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                        <asp:ListItem>Businessman</asp:ListItem>
                        <asp:ListItem>Goverment Service</asp:ListItem>
                        <asp:ListItem>Private Service</asp:ListItem>
                        <asp:ListItem>Agent</asp:ListItem>
                        <asp:ListItem>Broker</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                        <asp:ListItem>Farmer</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="ddlOccu"
                        Display="Dynamic" ErrorMessage="Select Member Occupation" Operator="NotEqual"
                        SetFocusOnError="True" ValueToCompare="--Select--">*</asp:CompareValidator></td>
            </tr>
            <tr>
                <td>
                    Caste</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtCaste" runat="server" MaxLength="20" Width="94px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblDuplicate" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" colspan="3" bgcolor="#ffccff">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Width="86px" OnClick="btnRegister_Click" /></td>
            </tr>
        </table>
    

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
</asp:Content>
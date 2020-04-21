<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" Title=" Admin Page " %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table align="center" border="1">
        <tr>
            <td align="center"> :: Contact Detail ::
            </td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White"
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4"
                    DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="100%">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                        <asp:BoundField DataField="Phone_No" HeaderText="Phone No" SortExpression="Phone_No" />
                        <asp:BoundField DataField="Contact_Person" HeaderText="Contact Person" SortExpression="Contact_Person" />
                        <asp:BoundField DataField="Mobile_No" HeaderText="Mobile No" SortExpression="Mobile_No" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    </Fields>
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RealEstate.mdf;Integrated Security=True;User Instance=True"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Company], [Address], [City], [Pincode], [Phone_No], [Contact_Person], [Mobile_No], [Email] FROM [Admin]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>


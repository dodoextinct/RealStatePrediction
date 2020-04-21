<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="MemberView.aspx.cs" Inherits="Admin_MemberView" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td align=center>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None"
                    BorderWidth="1px" CellPadding="3" DataKeyNames="Member_Id" DataSourceID="SqlDataSource1"
                    EnableSortingAndPagingCallbacks="True" GridLines="Vertical">
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <Columns>
                        <asp:BoundField DataField="Member_Id" HeaderText="Member_Id" InsertVisible="False"
                            ReadOnly="True" SortExpression="Member_Id" />
                        <asp:BoundField DataField="Member_Type" HeaderText="Member_Type" SortExpression="Member_Type" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="User_ID" HeaderText="User_ID" SortExpression="User_ID" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                        <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" SortExpression="Phone_No" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Caste" HeaderText="Caste" SortExpression="Caste" >
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                    </Columns>
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="Gainsboro" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RealEstate.mdf;Integrated Security=True;User Instance=True"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Member_Master]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


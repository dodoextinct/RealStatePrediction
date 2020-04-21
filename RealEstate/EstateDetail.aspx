<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="EstateDetail.aspx.cs" Inherits="EstateDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Member_Id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
        <ItemTemplate>
            <table style="text-align: left">
                <tr>
                    <td align="center" colspan="3">
                        Estate Detail</td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "Images/"+Eval("Estate_View") %>'
                            Width="100px" /></td>
                </tr>
                <tr>
                    <td>
                        Area</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Area") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Type</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Type") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Construction</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Construction") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Size(sq. ft)</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Size") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Price in Rs.</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Aprox_Price") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Estate Address</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Address1") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        Owner Detail</td>
                </tr>
                <tr>
                    <td>
                        Owner
                    </td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Name")+"["+Eval("Member_Type")+"]" %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Address</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Address") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        City</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("City") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Phone No.</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Phone_No") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Mobile No.</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("Mobile_No") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Email</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Email") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Occupation</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("Occupation") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Caste</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("Caste") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:DataList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDuplicate" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="center">
                        <asp:Button ID="btnAdd" runat="server" Text="Add To Request" Width="127px" OnClick="btnAdd_Click" /></td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RealEstate.mdf;Integrated Security=True;User Instance=True"
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT Member_Master.*, Estate_Master.* FROM Estate_Master INNER JOIN Member_Master ON Estate_Master.Member_Id = Member_Master.Member_Id And Estate_Id=@Estate_Id">
        <SelectParameters>
            <asp:SessionParameter Name="Estate_Id" SessionField="eid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


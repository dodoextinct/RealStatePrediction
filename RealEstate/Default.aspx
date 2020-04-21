<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            Type:</td>
                        <td>
                            <asp:DropDownList ID="ddlType" runat="server">
                                <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>Flat</asp:ListItem>
                                <asp:ListItem>Tenament</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            Construction :</td>
                        <td>
                            <asp:DropDownList ID="ddlConstruction" runat="server">
                                <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>1 BHK</asp:ListItem>
                                <asp:ListItem>2 BHK</asp:ListItem>
                                <asp:ListItem>3 BHK</asp:ListItem>
                                <asp:ListItem>4 BHK</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp; &nbsp; &nbsp;
                        </td>
                        <td>
                            Budget:</td>
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
                            &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
    <asp:DataList ID="DataList1" runat="server" BorderColor="#DEBA84"
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="Estate_Id"
        DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="5" OnItemCommand="DataList1_ItemCommand">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "Images/"+Eval("Estate_View") %>'
                            Width="100px" /></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td style="width: 10px">
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Type") %>'></asp:Label></td>
                    <td style="width: 10px">
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Construction") %>'></asp:Label></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                        (sq. ft)</td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        Price : Rs.
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Aprox_Price") %>'></asp:Label></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Area") %>'></asp:Label></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Estate_Id") %>'
                            Width="90px">More Detail</asp:LinkButton></td>
                    <td>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:DataList></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmpty" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Red"
                    Text="Estate Not Available For Selected Criteria" Visible="False"></asp:Label></td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RealEstate.mdf;Integrated Security=True;User Instance=True"
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Estate_Master] Where Sales_Status='N' Order By [Area],[Type],[Construction],[Size],[Aprox_Price]">
    </asp:SqlDataSource>
</asp:Content>


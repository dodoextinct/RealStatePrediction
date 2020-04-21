<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EstateView.aspx.cs" Inherits="Admin_EstateView"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center" border="1">
        <tr>
            <td align="center" colspan="12">
                Estate View/Modify</td>
        </tr>
        <tr>
            <td>
                Area</td>
            <td>
                :</td>
            <td>
                <asp:DropDownList ID="ddlArea" runat="server" DataSourceID="SqlDataSource1" DataTextField="Area" DataValueField="Area">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RealEstate.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT     '--Select--' AS Area&#13;&#10;FROM         Estate_Master&#13;&#10;WHERE     (Estate_Id = 1)&#13;&#10;UNION&#13;&#10;SELECT DISTINCT Area&#13;&#10;FROM         Estate_Master AS Estate_Master_1">
                </asp:SqlDataSource>
            </td>
            <td>
            </td>
            <td>
                Type</td>
            <td>
                :</td>
            <td>
                <asp:DropDownList ID="ddlType" runat="server">
                    <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                    <asp:ListItem>Flat</asp:ListItem>
                    <asp:ListItem>Tenament</asp:ListItem>
                </asp:DropDownList></td>
            <td>
            </td>
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
                </asp:DropDownList></td>
            <td rowspan="2">
                <asp:Button ID="btnSearch" runat="server" Text="View" Width="58px" OnClick="btnSearch_Click" /></td>
        </tr>
        <tr>
            <td>
                Status</td>
            <td>
                :</td>
            <td>
                <asp:DropDownList ID="ddlStatus" runat="server">
                    <asp:ListItem Selected="True" Value="0">--Select--</asp:ListItem>
                    <asp:ListItem Value="N">Not Sale</asp:ListItem>
                    <asp:ListItem Value="Y">Sale</asp:ListItem>
                </asp:DropDownList></td>
            <td>
            </td>
            <td>
                Size</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtSize" runat="server" Width="76px"></asp:TextBox>
                (Sq. ft)&nbsp;</td>
            <td>
            </td>
            <td>
                Estate Id</td>
            <td>
                :</td>
            <td>
                <asp:TextBox ID="txtEId" runat="server" Width="50px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="12" height="200">
                <asp:GridView ID="grdView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnPageIndexChanging="grdView_PageIndexChanging" OnRowCommand="grdView_RowCommand">
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <Columns>
                        <asp:TemplateField HeaderText="Area">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Area") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Type") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Construction">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Construction") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Size">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Size") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Aprox_Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# (Eval("Sales_Status").ToString()=="Y"?"Sale":"Not Sale") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" AlternateText='<%# "No Image" %>' Height="100px"
                                    ImageUrl='<%# "../Images/"+Eval("Estate_View") %>' ToolTip='<%# Eval("Estate_View") %>'
                                    Width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Option">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Estate_Id") %>'
                                    CommandName='<%# "Modify" %>' Width="87px">Modify</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <EmptyDataTemplate>
                        <span style="font-size: 12pt; color: red">Estate Not Available</span>
                    </EmptyDataTemplate>
                </asp:GridView>
                &nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>


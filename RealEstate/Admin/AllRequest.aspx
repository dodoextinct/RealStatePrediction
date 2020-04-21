<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AllRequest.aspx.cs" Inherits="Admin_AllRequest" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1" style="width: 388px">
        <tr>
            <td align="center" colspan="3">
                Select User For Request View</td>
        </tr>
        <tr>
            <td style="width: 93px">
                User Name
            </td>
            <td>
                :</td>
            <td>
                <asp:DropDownList ID="ddlUser" runat="server" DataSourceID="SqlDataSource1" DataTextField="User_ID"
                    DataValueField="Member_Id">
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RealEstate.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT [User_ID], [Member_Id] FROM [Member_Master] Union Select '--Select--' As User_Id,0 As Member_Id From Member_Master Where Member_Id=1">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="btnView" runat="server" Text="View" Width="61px" /></td>
        </tr>
    </table>
    <br />
    <table align="center">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="Tran_Id" DataSourceID="SqlDataSource2" ForeColor="#333333"
                    GridLines="None">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName='<%# "Delete" %>'
                                    OnClientClick="return confirm('Are You Sure To Delete Request?')" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date" SortExpression="Tran_Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Tran_Date") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Tran_Date", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Tran_Type" HeaderText="Sale/Purchase" SortExpression="Tran_Type" />
                        <asp:BoundField DataField="Estate_Id" HeaderText="Estate Id" SortExpression="Estate_Id" />
                        <asp:BoundField DataField="Purchase_Area" HeaderText="Area" SortExpression="Purchase_Area" />
                        <asp:BoundField DataField="Purchase_Type" HeaderText="Type" SortExpression="Purchase_Type" />
                        <asp:BoundField DataField="Construction" HeaderText="Construction" SortExpression="Construction" />
                        <asp:TemplateField HeaderText="Budget" SortExpression="Estimate_Budget">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Estimate_Budget") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="ddlBudget" runat="server" Enabled="False" EnableTheming="True"
                                    SelectedValue='<%# Bind("Estimate_Budget") %>'>
                                    <asp:ListItem Selected="True" Value="0">--Select(In Lac)--</asp:ListItem>
                                    <asp:ListItem Value="1">Less Than 10</asp:ListItem>
                                    <asp:ListItem Value="2">10 - 15</asp:ListItem>
                                    <asp:ListItem Value="3">15 - 20</asp:ListItem>
                                    <asp:ListItem Value="4">20 - 25</asp:ListItem>
                                    <asp:ListItem Value="5">25 - 30</asp:ListItem>
                                    <asp:ListItem Value="6">More Than 30</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle BackColor="#EFF3FB" />
                    <EmptyDataTemplate>
                        <span style="font-size: 14pt; color: red">Request Not Found</span>
                    </EmptyDataTemplate>
                    <EditRowStyle BackColor="#2461BF" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\RealEstate.mdf;Integrated Security=True;User Instance=True"
                    DeleteCommand="DELETE FROM [Transaction_Master] WHERE [Tran_Id] = @Tran_Id" InsertCommand="INSERT INTO [Transaction_Master] ([Tran_Date], [Member_Id], [Tran_Type], [Estate_Id], [Purchase_Area], [Purchase_Type], [Construction], [Estimate_Budget]) VALUES (@Tran_Date, @Member_Id, @Tran_Type, @Estate_Id, @Purchase_Area, @Purchase_Type, @Construction, @Estimate_Budget)"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Transaction_Master] WHERE ([Member_Id] = @Member_Id) ORDER BY [Tran_Date],[Tran_Id]"
                    UpdateCommand="UPDATE [Transaction_Master] SET [Tran_Date] = @Tran_Date, [Member_Id] = @Member_Id, [Tran_Type] = @Tran_Type, [Estate_Id] = @Estate_Id, [Purchase_Area] = @Purchase_Area, [Purchase_Type] = @Purchase_Type, [Construction] = @Construction, [Estimate_Budget] = @Estimate_Budget WHERE [Tran_Id] = @Tran_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Tran_Id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Tran_Date" Type="DateTime" />
                        <asp:Parameter Name="Member_Id" Type="Int32" />
                        <asp:Parameter Name="Tran_Type" Type="String" />
                        <asp:Parameter Name="Estate_Id" Type="Int32" />
                        <asp:Parameter Name="Purchase_Area" Type="String" />
                        <asp:Parameter Name="Purchase_Type" Type="String" />
                        <asp:Parameter Name="Construction" Type="String" />
                        <asp:Parameter Name="Estimate_Budget" Type="Int32" />
                        <asp:Parameter Name="Tran_Id" Type="Int32" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlUser" Name="Member_Id" PropertyName="SelectedValue"
                            Type="Int32" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Tran_Date" Type="DateTime" />
                        <asp:Parameter Name="Member_Id" Type="Int32" />
                        <asp:Parameter Name="Tran_Type" Type="String" />
                        <asp:Parameter Name="Estate_Id" Type="Int32" />
                        <asp:Parameter Name="Purchase_Area" Type="String" />
                        <asp:Parameter Name="Purchase_Type" Type="String" />
                        <asp:Parameter Name="Construction" Type="String" />
                        <asp:Parameter Name="Estimate_Budget" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
</asp:Content>


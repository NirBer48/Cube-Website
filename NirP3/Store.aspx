<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <table class="nav-justified">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <table style="width: 100%">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300" Font-Size="X-Large"></asp:Label>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                    GroupItemCount="3" onitemcommand="ListView1_ItemCommand" 
                    DataKeyNames="ProductCode">
                    <EditItemTemplate>
                        <td runat="server" style="">
                            ProductImg:
                            <asp:TextBox ID="ProductImgTextBox" runat="server" 
                                Text='<%# Bind("ProductImg") %>' />
                            <br />
                            ProductName:
                            <asp:TextBox ID="ProductNameTextBox" runat="server" 
                                Text='<%# Bind("ProductName") %>' />
                            <br />
                            ProductPrice:
                            <asp:TextBox ID="ProductPriceTextBox" runat="server" 
                                Text='<%# Bind("ProductPrice") %>' />
                            <br />
                            ProductCode:
                            <asp:Label ID="ProductCodeLabel1" runat="server" 
                                Text='<%# Eval("ProductCode") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                Text="Update" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Cancel" />
                            <br />
                        </td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table style="" runat="server">
                            <tr>
                                <td>
                                    No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr ID="itemPlaceholderContainer" runat="server">
                            <td ID="itemPlaceholder" runat="server">
                            </td>
                        </tr>
                    </GroupTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">
                            ProductImg:
                            <asp:TextBox ID="ProductImgTextBox" runat="server" 
                                Text='<%# Bind("ProductImg") %>' />
                            <br />
                            ProductName:
                            <asp:TextBox ID="ProductNameTextBox" runat="server" 
                                Text='<%# Bind("ProductName") %>' />
                            <br />
                            ProductPrice:
                            <asp:TextBox ID="ProductPriceTextBox" runat="server" 
                                Text='<%# Bind("ProductPrice") %>' />
                            <br />
                            ProductCode:
                            <asp:TextBox ID="ProductCodeTextBox" runat="server" 
                                Text='<%# Bind("ProductCode") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                Text="Insert" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Clear" />
                            <br />
                        </td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server" style="">
                            Cube Image:
                               <asp:Image ID="ProductImgLabel" runat="server" width="300" Height="300" ImageUrl='<%# Eval("ProductImg","images/{0}") %>' />
                            <br />
                            Cube Name:
                            <asp:Label ID="ProductNameLabel" runat="server" 
                                Text='<%# Eval("ProductName") %>' />
                            <br />
                            Cube Price:
                            <asp:Label ID="ProductPriceLabel" runat="server" 
                                Text='<%# Eval("ProductPrice") %>' />
                            <br />
                            Product Code:
                            <asp:Label ID="ProductCodeLabel" runat="server" 
                                Text='<%# Eval("ProductCode") %>' />
                            <br />
                            <asp:ImageButton ID="imgCart" runat="server" ImageUrl="~/images/cart.jpg" Width="50" Height="50" CommandName="addToCart" />
                            <br />
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr ID="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="">
                            ProductImg:
                            <asp:Label ID="ProductImgLabel" runat="server" 
                                Text='<%# Eval("ProductImg") %>' />
                            <br />
                            ProductName:
                            <asp:Label ID="ProductNameLabel" runat="server" 
                                Text='<%# Eval("ProductName") %>' />
                            <br />
                            ProductPrice:
                            <asp:Label ID="ProductPriceLabel" runat="server" 
                                Text='<%# Eval("ProductPrice") %>' />
                            <br />
                            ProductCode:
                            <asp:Label ID="ProductCodeLabel" runat="server" 
                                Text='<%# Eval("ProductCode") %>' />
                            <br />
                        </td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    
                    
                    SelectCommand="SELECT [ProductImg], [ProductName], [ProductPrice], [ProductCode] FROM [products]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</p>
</asp:Content>


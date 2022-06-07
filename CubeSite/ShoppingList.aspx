<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="ShoppingList.aspx.cs" Inherits="ShoppingList" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 76%; position: relative; top: 0px; left: 370px">
            <td>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <asp:Label ID="totallbl" runat="server" Text="" Font-Bold="True" Font-Size="Medium" Font-Names="clarendon-fortune-bold"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
             AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="ProdCode" 
                    onrowdeleting="GridView1_RowDeleting" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    onpageindexchanging="GridView1_PageIndexChanging1">
<%--        <Columns>
                    <asp:TemplateField HeaderText="ProductImage" SortExpression="ProductImage">
               
                <ItemTemplate>
                    <asp:Image ID="Label1" runat="server"  width="200" Height="200"  ImageUrl='<%# Bind("ProductImage","images/{0}") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>--%>
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
        
            <asp:CommandField ShowDeleteButton="True"  />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Label1" runat="server"  width="200" Height="200"  ImageUrl='<%# Bind("ProdImage","images/{0}") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ProdName" HeaderText="Cube Name" />
            <asp:BoundField DataField="ProdPrice" HeaderText="Cube Price" />
            <asp:TemplateField HeaderText="Product Code">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProdCode") %>'></asp:Label>
                </ItemTemplate>
                
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

    </asp:GridView>
            <asp:Button ID="cartcleaner" runat="server" Text="Clear Cart" OnClick = "cartcleaner_Click1" />
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#CC0000" 
                    PostBackUrl="~/Pay.aspx">CHECK OUT</asp:LinkButton>
                
            </td>
        <div style="text-align: center;">
        <asp:Label ID="Label1" runat="server" Text="SHOPPING LIST" Font-Size="XX-Large" ForeColor="#FF6600" Font-Bold="True" Font-Italic="False" Font-Underline="True" Font-Names="classic-roman"></asp:Label>
        </div>
    </table>
</asp:Content>


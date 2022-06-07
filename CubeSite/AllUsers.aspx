<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AllUsers.aspx.cs" Inherits="AllUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
    DataKeyNames="username" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None" Height="371px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="email" HeaderText="email" 
                SortExpression="email" />
            <asp:BoundField DataField="country" HeaderText="country" 
                SortExpression="country" />
            <asp:BoundField DataField="adress" HeaderText="adress" 
                SortExpression="adress" />
            <asp:BoundField DataField="age" HeaderText="age" 
                SortExpression="age" />
            <asp:CheckBoxField DataField="admin" HeaderText="admin" 
                SortExpression="admin" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle  HorizontalAlign="Center" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle HorizontalAlign="Center" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
    SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>

</asp:Content>


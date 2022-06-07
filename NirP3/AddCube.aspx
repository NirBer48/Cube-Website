<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddCube.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 70%;
            height: 637px;
        }
        .style2
        {
            font-size: xx-large;
            text-align: center;
            color: #000000;
        }
        .style3
        {
            width: 207px;
        height: 122px;
    }
        .style11
        {
            width: 207px;
            height: 69px;
        }
        .style13
        {
            height: 69px;
        width: 642px;
    }
        .style20
        {
            width: 207px;
            height: 61px;
        }
        .style22
        {
            height: 61px;
        width: 642px;
    }
        .style23
        {
            width: 207px;
            height: 58px;
        }
        .style25
        {
            height: 58px;
        width: 642px;
    }
        .style26
        {
            width: 207px;
            height: 52px;
        }
        .style28
        {
            height: 52px;
        width: 642px;
    }
    .style29
    {
        height: 122px;
        width: 642px;
    }
    .style30
    {
        width: 275px;
        height: 58px;
    }
    .style31
    {
        width: 275px;
        height: 69px;
    }
    .style32
    {
        width: 275px;
        height: 61px;
    }
    .style33
    {
        width: 275px;
        height: 52px;
    }
    .style34
    {
        width: 275px;
        height: 122px;
    }
    </style>
         
        <table class="style1" bgcolor="Silver" border="3">
            <tr>
                <td class="style2" colspan="3">
                    Add Product</td>
            </tr>
            <tr>
                <td class="style23">
                    Name of Cube</td>
                <td class="style30">
                    <asp:TextBox ID="txtname" runat="server" Height="44px" Width="210px" 
                        AutoPostBack="True" ontextchanged="txtcode_TextChanged"></asp:TextBox>
                </td>
                <td class="style25">
                    </td>
            </tr>
            <tr>
                <td class="style11">
                    Product Code</td>
                <td class="style31">
                    <asp:TextBox ID="txtcode" runat="server" Height="44px" Width="209px" 
                        style="z-index: 1; left: 427px; top: 240px; position: static" ></asp:TextBox>
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    Price</td>
                <td class="style32">
                    <asp:TextBox ID="txtprice" runat="server" Height="45px" Width="211px"></asp:TextBox>
                </td>
                <td class="style22">
                    </td>
            </tr>
            <tr>
                <td class="style26">
                    picture</td>
                <td class="style33">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="218px" />
                </td>
                <td class="style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Add" Width="152px" 
                        onclick="Button1_Click" Height="26px" />
                </td>
                <td class="style34">
                    </td>
                <td class="style29">
                    </td>
            </tr>
        </table>
    <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" CellPadding="4" DataKeyNames="ProductName" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
            <asp:BoundField DataField="ProductImg" HeaderText="ProductImg" 
                    SortExpression="ProductImg" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" ReadOnly="True" 
                    SortExpression="ProductName" />
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice"
                    SortExpression="ProductPrice" />
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" 
                    SortExpression="ProductCode" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
        <br />
        <br />
</asp:Content>


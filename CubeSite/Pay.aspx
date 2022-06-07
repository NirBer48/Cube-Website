<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="Pay.aspx.cs" Inherits="editProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 644px;
        }
        .style2
        {
            width: 274px;
        text-align: center;
        font-weight: 700;
        height: 34px;
    }
        .style3
        {
    }
        .style4
        {
            width: 215px;
        }
        .style5
        {
            height: 54px;
        }
        .style6
        {
            width: 215px;
            height: 54px;
        }
    </style>

    <table class="style1" bgcolor="#000066" border="3">
            <tr>
                <td class="style2" colspan="2">
                    Payment form</td>
            </tr>
            <tr>
                <td class="style3">
                    username</td>
                <td class="style4">
                    <asp:Label ID="lbluser" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Products</td>
                <td class="style4">
                    <asp:Label ID="lblprod" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Enter Visa</td>
                <td class="style6">
                    <asp:TextBox ID="txtvisa" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Enter Visa Expiration Month</td>
                <td class="style6">
                    <asp:TextBox ID="txtvalidM" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Enter Visa Expiration Year</td>
                <td class="style4">
                    <asp:TextBox ID="txtvalidY" runat="server" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Price</td>
                <td class="style4">
                    <asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Confirm" Width="152px" 
                        onclick="Button1_Click" />
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
        </table>
    <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <br />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="editProfile.aspx.cs" Inherits="editProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 644px;
        }
        .style2
        {
            width: 274px;
        font-weight: 700;
        text-align: center;
        color: #000000;
        height: 28px;
    }
        .style3
        {
            width: 273px;
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
    .style7
    {
        color: #CCFFCC;
    }
    .style8
    {
        width: 215px;
        color: #000000;
    }
    .style9
    {
        width: 273px;
        color: #000000;
    }
    .style10
    {
        height: 54px;
        color: #CCFFCC;
    }
    .style11
    {
        color: #000000;
    }
    .style12
    {
        height: 54px;
        color: #000000;
    }
    </style>

    <table class="style1" bgcolor="#339933" border="3">
            <tr>
                <td class="style2" colspan="3" bgcolor="#CCFFCC">
                    Edit Profile Form</td>
            </tr>
            <tr>
                <td class="style9" bgcolor="#CCFFCC">
                    username</td>
                <td class="style4" bgcolor="#CCFFCC">
                    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="style11"></asp:Label>
                </td>
                <td bgcolor="#CCFFCC" class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12" bgcolor="#CCFFCC">
                    Password</td>
                <td class="style4" bgcolor="#CCFFCC">
                    <asp:TextBox ID="txtPassword" runat="server" Height="44px" Width="209px" 
                        style="z-index: 1; left: 427px; top: 240px; position: static" 
                        ></asp:TextBox>
                </td>
                <td class="style7" bgcolor="#CCFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" 
                        CssClass="style11">you have to enter password</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style12" bgcolor="#CCFFCC">
                    Adress</td>
                <td class="style6" bgcolor="#CCFFCC">
                    <asp:TextBox ID="txtadress" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="style5" bgcolor="#CCFFCC">
                    <asp:Label ID="Label2" runat="server" CssClass="style11"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8" bgcolor="#CCFFCC">
                    Country</td>
                <td class="style4" bgcolor="#CCFFCC">
                    <asp:DropDownList ID="drplist" runat="server" Height="55px" 
                        onselectedindexchanged="drplist_SelectedIndexChanged">
                        <asp:ListItem>Israel</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>Italy</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label5" runat="server" Text="Label" CssClass="style11"></asp:Label>
                </td>
                <td class="style10" bgcolor="#CCFFCC">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="drplist" ErrorMessage="RequiredFieldValidator" 
                        CssClass="style11">you have to choose country</asp:RequiredFieldValidator>
                    <asp:Label ID="lblcountry" runat="server" CssClass="style11"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9" bgcolor="#CCFFCC">
                    Email</td>
                <td class="style4" bgcolor="#CCFFCC">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="199px"></asp:TextBox>
                </td>
                <td bgcolor="#CCFFCC" class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" bgcolor="#CCFFCC">
                    Age</td>
                <td class="style4" bgcolor="#CCFFCC">
                    <asp:TextBox ID="txtage" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td bgcolor="#CCFFCC">
                    <asp:Label ID="Label6" runat="server" Text="Label" CssClass="style11"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" bgcolor="#CCFFCC">
                    <asp:Button ID="Button1" runat="server" Text="btnDoit" Width="152px" 
                        onclick="Button1_Click" />
                </td>
                <td class="style8" bgcolor="#CCFFCC">
                    &nbsp;</td>
                <td bgcolor="#CCFFCC" class="style11">
                    &nbsp;</td>
            </tr>
        </table>
    <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <br />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVisitor.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; background-color: #FAF2CC; height: 529px;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Names="Bernard MT Condensed" 
                    Font-Size="X-Large" ForeColor="#003300" 
                    style="z-index: 1; position: absolute; top: 4px; left: 17px" 
                    Text="Fill In The Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" BackColor="#FFCC99" Text="Username" Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" BackColor="#FFCC99" OnTextChanged="txtusername_TextChanged"></asp:TextBox>
            &nbsp;<asp:Label ID="Label9" runat="server" BackColor="#FFCC99" Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" BackColor="#FFCC99" Text="Password" Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" BackColor="#FFCC99" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 62px">
                <asp:Label ID="Label4" runat="server" BackColor="#FFCC99" Text="Email" Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
            <td style="height: 62px">
                <asp:TextBox ID="txtemail" runat="server" BackColor="#FFCC99"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" BackColor="#FFCC99" Font-Names="Bernard MT Condensed"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" BackColor="#FFCC99" Text="Country" Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server" BackColor="#FFCC99"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" BackColor="#FFCC99" Text="Adress" Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtadress" runat="server" BackColor="#FFCC99"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" BackColor="#FFCC99" Text="Age" Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtage" runat="server" BackColor="#FFCC99"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnSignIn" runat="server" BackColor="#FF9966" 
                    OnClick="Button1_Click" Text="Sign Up" Font-Names="Bernard MT Condensed" 
                    Font-Size="Large" />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>



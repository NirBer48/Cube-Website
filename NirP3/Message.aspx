<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVisitor.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; background-color: #FAF2CC; height: 529px;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Names="Bernard MT Condensed" 
                    Font-Size="X-Large" ForeColor="#003300" 
                    style="z-index: 1; position: absolute; top: 4px; left: 17px; text-align: center;" 
                    Text="Send Message To An Admin"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 62px">
                <asp:Label ID="Label4" runat="server" BackColor="#FFCC99" Text="Message Topic" 
                    Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
            <td style="height: 62px">
                <asp:TextBox ID="txttopic" runat="server" BackColor="#FFCC99"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" BackColor="#FFCC99" Font-Names="Bernard MT Condensed"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 231px">
                <asp:Label ID="Label6" runat="server" BackColor="#FFCC99" Text="Enter Message" 
                    Font-Names="Bernard MT Condensed" Font-Size="Large"></asp:Label>
            </td>
            <td style="height: 231px">
                <asp:TextBox ID="txtmess" TextMode="MultiLine" Rows="10" runat="server" 
                    BackColor="#FFCC99" Height="124px" 
                    Width="279px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnSignIn" runat="server" BackColor="#FF9966" 
                    OnClick="Button1_Click" Text="Send Message" Font-Names="Bernard MT Condensed" 
                    Font-Size="Large" />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>



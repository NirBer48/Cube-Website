<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVisitor.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>




<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%; background-color: #FAF2CC; height: 478px;">
        <tr>
            <td style="height: 236px; width: 271px;">
                </td>
            <td style="height: 236px">
                &nbsp;<img alt="نتيجة بحث الصور عن log in gif" src="https://cdn.vend-x.com/images/login-btn.gif" style="height: 106px" /><br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 129px; width: 271px;">
            </td>
            <td style="height: 129px">
                <asp:Label ID="labelusername" runat="server" Text="           Username:" 
                    CssClass="col-sm-push-2" Font-Names="Bernard MT Condensed" Font-Size="X-Large" 
                    
                    style="z-index: 1; position: static; top: 321px; left: 291px; width: 98px; height: 33px"></asp:Label>
                <asp:TextBox ID="txtusernamelogin" runat="server" BackColor="#FFCC99" OnTextChanged="txtusernamelogin_TextChanged" Font-Names="Aharoni" Font-Size="Small" ForeColor="Black"></asp:TextBox>
                <asp:Label ID="labelforusername" runat="server" ForeColor="Red"></asp:Label>
                <asp:Button ID="btnSend" runat="server" ForeColor="Green" OnClick="Button1_Click" Text="Send" Visible="False" />
            </td>
        </tr>
        <tr>
            <td style="width: 271px">
                &nbsp;</td>
            <td>
                <asp:Label ID="labepassword" runat="server" Text="Password:" 
                    Font-Names="Bernard MT Condensed" Font-Size="X-Large" 
                    
                    style="z-index: 1; position: static; top: 401px; left: 288px; width: 100px; height: 32px"></asp:Label>
                <asp:TextBox ID="txtpasswordlogin" runat="server" BackColor="#FFCC99" TextMode="Password" Font-Names="Aharoni" Font-Size="Small" ForeColor="Black"></asp:TextBox>
            &nbsp;<asp:Button ID="btnenter" runat="server" Text="Enter" Visible="False" OnClick="btnenter_Click" ForeColor="Green" />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                <table class="nav-justified" style="height: 226px">
                    <tr>
                        <td>
                            <asp:Button ID="btnlogin" runat="server" BackColor="#FFCC99" Height="34px" Text="Log In" Width="96px" OnClick="btnlogin_Click" Font-Names="Bernard MT Condensed" Font-Size="Large" />
                        </td>
                        <td>
                            <asp:Button ID="btnforgotpassword" runat="server" BackColor="#FFCC99" Text="Forgot Password?" OnClick="btnforgotpassword_Click" Font-Names="Bernard MT Condensed" Font-Size="Large" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnsignup" runat="server" BackColor="#FFCC99" Text="Don't Have An Account? Sign Up" OnClick="btnsignup_Click" Font-Names="Bernard MT Condensed" Font-Size="Large" />
                            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>









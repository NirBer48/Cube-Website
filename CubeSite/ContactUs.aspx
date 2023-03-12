<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Contactaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Address:
<center>
<iframe src="https://www.google.com/maps" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</center>
Tel: 000-00-000-00
    <p/>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Message.aspx">SEND MESSAGE</asp:HyperLink>

</asp:Content>


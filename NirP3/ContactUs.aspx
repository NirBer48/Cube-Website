<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Contactaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Address:
<center>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13411.584565589275!2d35.10954326035014!3d32.821516727634176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151db6d96540d471%3A0x184e6e8a85368297!2z15vXpNeoINeR15nXkNec15nXpw!5e0!3m2!1siw!2sil!4v1617713621222!5m2!1siw!2sil" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</center>
Tel: 000-00-000-00
    <p/>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Message.aspx">SEND MESSAGE</asp:HyperLink>

</asp:Content>


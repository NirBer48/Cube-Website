<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageVisitor.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<Itemgroup>
 <ProjectReference Include="..\PdfSharp.Charting\PdfSharp.Charting.csproj" />
 <ProjectReference Include="..\PdfSharp\PdfSharp.csproj" />
</Itemgroup>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="PracticeWebApplication.News" Theme="Red" %>
<%@ MasterType VirtualPath="~/DefaultPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>News</p>
    <asp:Label runat="server" Text="" ID="lblMessage"></asp:Label>
</asp:Content>

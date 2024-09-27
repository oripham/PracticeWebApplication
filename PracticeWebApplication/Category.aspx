<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPage.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="PracticeWebApplication.Category1" %>

<%@ Register Src="~/UserControls/ucProductListByCategory.ascx" TagPrefix="uc1" TagName="ucProductListByCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucProductListByCategory runat="server" id="ucProductListByCategory" />
</asp:Content>

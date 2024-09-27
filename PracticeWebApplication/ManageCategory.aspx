<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPage.Master" AutoEventWireup="true" CodeBehind="ManageCategory.aspx.cs" Inherits="PracticeWebApplication.ManageCategory" %>

<%@ Register Src="~/UserControls/ucManageCategory.ascx" TagPrefix="uc1" TagName="ucManageCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageCategory runat="server" ID="ucManageCategory" />
</asp:Content>

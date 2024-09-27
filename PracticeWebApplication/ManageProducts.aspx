<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPage.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="PracticeWebApplication.ManageProducts" %>

<%@ Register Src="~/UserControls/ucManageProducts.ascx" TagPrefix="uc1" TagName="ucManageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageProducts runat="server" id="ucManageProducts" />
</asp:Content>

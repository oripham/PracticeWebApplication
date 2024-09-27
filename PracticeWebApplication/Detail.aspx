<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPage.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="PracticeWebApplication.Detail" %>

<%@ Register Src="~/UserControls/ucProductDetails.ascx" TagPrefix="uc1" TagName="ucProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucProductDetails runat="server" ID="ucProductDetails" />
</asp:Content>

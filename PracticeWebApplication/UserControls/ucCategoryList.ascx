<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategoryList.ascx.cs" Inherits="PracticeWebApplication.UserControls.WebUserControl1" %>

<asp:DataList ID="DataListCategoryList" runat="server" DataSourceID="CategoryListEntityDataSource" DataKeyField="id">
    <ItemTemplate>
        <div>
            <asp:HyperLink ID="CategoryHyperLink" runat="server" Text='<%# Eval("Name") + "(" + Eval("Products.Count") + ")" %>' NavigateUrl=<%# "~/Category.aspx?id=" + Eval("Id") %>></asp:HyperLink>
        </div>
    </ItemTemplate>
</asp:DataList><asp:EntityDataSource runat="server" ID="CategoryListEntityDataSource" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EntitySetName="Categories" Include="Products"></asp:EntityDataSource>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageCategory.ascx.cs" Inherits="PracticeWebApplication.UserControls.ucManageCategory" %>
<asp:GridView ID="GridViewCategory" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ManageCategoryEntityDataSource">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
    </Columns>
</asp:GridView>
<asp:EntityDataSource ID="ManageCategoryEntityDataSource" runat="server" ConnectionString="name=MyShopEntities" DefaultContainerName="MyShopEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Categories" OnUpdated="ManageCategoryEntityDataSource_Updated" OnDeleted="ManageCategoryEntityDataSource_Updated">
</asp:EntityDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="CategoryEntityDataSource" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:EntityDataSource ID="CategoryEntityDataSource" runat="server" AutoGenerateWhereClause="True" ConnectionString="name=MyShopEntities" DefaultContainerName="MyShopEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Categories" Where="" OnInserted="ManageCategoryEntityDataSource_Updated">
    <WhereParameters>
        <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
    </WhereParameters>
</asp:EntityDataSource>


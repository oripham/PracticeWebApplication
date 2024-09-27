<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSearchProduct.ascx.cs" Inherits="PracticeWebApplication.UserControls.ucSearchProduct" %>


<table style="width: 100%;">
    <tr>
        <td>Name:
        </td>
        <td>
            <asp:TextBox ID="tbxName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Price:
        </td>
        <td>
            <asp:TextBox ID="tbxLowerPrice" runat="server"></asp:TextBox>
        </td>

        <td>
            <asp:TextBox ID="tbxUpperPrice" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnSearch" runat="server" Text="Search" /></td>
    </tr>
</table>

<p>Search Result</p>
<asp:ListView ID="lvwSearchResult" runat="server" DataSourceID="SearchResultEntityDataSource" DataKeyNames="id" OnSelectedIndexChanged="lvwSearchResult_SelectedIndexChanged">
   
    <ItemTemplate>
        <span style="">
            Name:
            <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /><br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Products/" + Eval("FilePath") %>'/><br />
            Price:
            <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /><br />
            Description:
            <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /><br />
            Category:
            <asp:Label Text='<%# Eval("Category.Name") %>' runat="server" ID="CategoryLabel" /><br />
            <br />
        </span>
    </ItemTemplate>
    <LayoutTemplate>
        <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
        <div style="">
        </div>
    </LayoutTemplate>

</asp:ListView>
<asp:EntityDataSource runat="server" ID="SearchResultEntityDataSource" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EntitySetName="Products"
    Where="it.Name like '%' + @Name + '%' and it.Price >= @LowerPrice and it.Price <= @UpperPrice " EntityTypeFilter="" Select="" Include="Category">
    <WhereParameters>
        <asp:ControlParameter ControlID="tbxName" PropertyName="Text" Name="Name" Type="String"></asp:ControlParameter>
        <asp:ControlParameter ControlID="tbxLowerPrice" PropertyName="Text" Name="LowerPrice" Type="Decimal"></asp:ControlParameter>
        <asp:ControlParameter ControlID="tbxUpperPrice" PropertyName="Text" Name="UpperPrice" Type="Decimal"></asp:ControlParameter>
    </WhereParameters>
</asp:EntityDataSource>

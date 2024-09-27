<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProductListByCategory.ascx.cs" Inherits="PracticeWebApplication.UserControls.ucProductListByCategory" %>
<asp:ListView ID="ListViewProductListByCategory" runat="server" DataSourceID="ProductListByCategoryEntityDataSource" DataKeyNames="id" OnSelectedIndexChanged="ListViewProductListByCategory_SelectedIndexChanged">
    
    <ItemTemplate>
        <div>
            <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br />
            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# "~/images/Products/" + Eval("FilePath") %>'/><br />
            <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
            <asp:HyperLink ID="hrlProductDetail" runat="server" NavigateUrl='<%# "~/Detail.aspx?id=" + Eval("id") %>'>View Detail</asp:HyperLink><br />
        </div>
    </ItemTemplate>
    <LayoutTemplate>
        <div runat="server" id="itemPlaceholderContainer" style=""><span runat="server" id="itemPlaceholder" /></div>
        <div style="">
            <asp:DataPager runat="server" ID="DataPager1">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                    <asp:NumericPagerField></asp:NumericPagerField>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                </Fields>
            </asp:DataPager>

        </div>
    </LayoutTemplate>

</asp:ListView>
<asp:EntityDataSource runat="server" ID="ProductListByCategoryEntityDataSource" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EntitySetName="Products" Include="Category" Where="it.Category.id = @CategoryId" EntityTypeFilter="" Select="">
    <WhereParameters>
        <asp:QueryStringParameter Name="CategoryId" QueryStringField="id" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>

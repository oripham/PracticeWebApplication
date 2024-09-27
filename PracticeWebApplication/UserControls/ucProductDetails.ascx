<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProductDetails.ascx.cs" Inherits="PracticeWebApplication.UserControls.ucProductDetails" %>
<asp:FormView ID="FormView1" runat="server" DataSourceID="ProductDetailEntityDataSource" DataKeyNames="id">

    <ItemTemplate>
        <asp:Image ID="imgProductDetail" runat="server" ImageUrl='<%# Eval("FilePath", "~/images/Products/{0}") %>' /> <br />
        <asp:Label ID="lblProductDetailName" runat="server" Text='<%# Eval("Name") %>'></asp:Label> <br />
        <asp:Label ID="lblProductDetailPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
        <asp:Label ID="lblProductDetailDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
        <asp:Label ID="lblProductDetailCategoryId" runat="server" Text='<%# Eval("Category.Name") %>'></asp:Label><br />
    </ItemTemplate>
    
</asp:FormView>
<asp:EntityDataSource runat="server" ID="ProductDetailEntityDataSource" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EntitySetName="Products" Where="it.id = @ID">
    <WhereParameters>
        <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>

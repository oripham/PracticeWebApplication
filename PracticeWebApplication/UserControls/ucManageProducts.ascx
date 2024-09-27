<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageProducts.ascx.cs" Inherits="PracticeWebApplication.UserControls.ucManageProducts" %>
<asp:GridView ID="GridViewProducts" runat="server">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <%# Container.DataItemIndex + 1 %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Picture">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("FilePath") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name">
            <ItemTemplate >
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Name") %>'  NavigateUrl='<%# "~/Detail.aspx?id=" + Eval("id") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


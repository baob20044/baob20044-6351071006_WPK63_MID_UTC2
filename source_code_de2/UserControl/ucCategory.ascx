<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategory.ascx.cs" Inherits="de1.UserControl.ucCategory" %>
<b>Beverages Category Available</b> <br />
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="DataListEntityDataSource1">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Category.aspx?CatID=" + Eval("CatID")%>' runat="server" Text='<%# Eval("CatName") + "(" + Eval("Beverages.Count") + ")" %>'></asp:HyperLink>
<br />
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="DataListEntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Categories" Include="Beverages">
</asp:EntityDataSource>

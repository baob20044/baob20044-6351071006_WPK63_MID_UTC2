<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProduct.ascx.cs" Inherits="de1.UserControl.ucProduct" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="ListViewEntityDataSource1">
    <ItemTemplate>
        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Beverages/" + Eval("ImageFilePath") %>'/>
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">View Details</asp:HyperLink>
        <br />
<br /></span>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="ListViewEntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Beverages" Where="it.Category.CatID=@CatID">
    <WhereParameters>
        <asp:QueryStringParameter Name="CatID" QueryStringField="CatID" Type="Int32"/>
    </WhereParameters>
</asp:EntityDataSource>


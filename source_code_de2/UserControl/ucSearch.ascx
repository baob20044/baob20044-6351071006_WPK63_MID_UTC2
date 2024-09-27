<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSearch.ascx.cs" Inherits="de1.UserControl.ucSearch" %>


    <table class="auto-style1">
    <tr>
        <td class="auto-style2">Name</td>
        <td colspan="2"> 
            <asp:TextBox ID="txtName" runat="server" Width="361px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Price</td>
        <td class="auto-style3">
                <asp:TextBox ID="txtLower" runat="server" Width="161px"></asp:TextBox>
        </td>

        <td class="auto-style4">
              <asp:TextBox ID="txtUpper" runat="server" Width="161px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Button ID="btnSearch" runat="server" Text="Search" />
        </td>
    </tr>
</table>
<br />
    Search Result:</p>
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
    <EmptyDataTemplate>
        No beverages founded !
    </EmptyDataTemplate>
</asp:ListView>
<asp:EntityDataSource ID="ListViewEntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Beverages" where="it.Name like '%' +@TName + '%' and it.Price >= @LowPrice and it.Price <= @UpPrice " >
     <WhereParameters>
       <asp:ControlParameter ControlID="txtName" PropertyName="Text" Name="TName" Type="String" />
      <asp:ControlParameter ControlID="txtLower" Name="LowPrice" PropertyName="Text" Type="Decimal" />
      <asp:ControlParameter ControlID="txtUpper" Name="UpPrice" PropertyName="Text" Type="Decimal" />
  </WhereParameters>
</asp:EntityDataSource>


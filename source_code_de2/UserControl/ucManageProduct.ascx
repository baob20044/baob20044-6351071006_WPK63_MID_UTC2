<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageProduct.ascx.cs" Inherits="de1.UserControl.ucManageProduct" %>
<style type="text/css">
    .auto-style1 {
        margin-right: 0px;
    }
</style>

<p>
    Beverage name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Tên đồ uống chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Beverage Price<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Mức giá đồ uống chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Category<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DropdownlistEntityDataSource1" DataTextField="CatName" DataValueField="CatName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:EntityDataSource ID="DropdownlistEntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Categories" Select="it.[CatName]">
    </asp:EntityDataSource>
</p>
<p>
    Beverage Description<asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDescription" ErrorMessage="Mô tả thông tin đồ uống chưa nhập " ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Beverage Picture<asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Hình ảnh đồ uống chưa nhập" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Add new" />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="ID" DataSourceID="GridViewEntityDataSource1" PageSize="3">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="No." ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="ImageFilePath" HeaderText="Images" SortExpression="ImageFilePath" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        </Columns>
    </asp:GridView>
    <asp:EntityDataSource ID="GridViewEntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Beverages" OnUpdated="GridViewEntityDataSource1_Updated">
    </asp:EntityDataSource>
</p>


<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="de1.search" %>
<%@ Register src="UserControl/ucSearch.ascx" tagname="ucSearch" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucSearch ID="ucSearch1" runat="server" />
</asp:Content>

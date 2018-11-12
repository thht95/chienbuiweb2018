<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="quan-ly-nha-ga-di.aspx.cs" Inherits="BanVeTau.admin.quan_ly_nha_ga_di" %>

<%@ Register Src="~/admin/Control/quanlygadi.ascx" TagPrefix="uc1" TagName="quanlygadi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <uc1:quanlygadi runat="server" id="quanlygadi" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="quan-ly-nha-ga-den.aspx.cs" Inherits="BanVeTau.admin.quan_ly_nha_ga_den" %>

<%@ Register Src="~/admin/Control/quanlygaden.ascx" TagPrefix="uc1" TagName="quanlygaden" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <uc1:quanlygaden runat="server" id="quanlygaden" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
</asp:Content>


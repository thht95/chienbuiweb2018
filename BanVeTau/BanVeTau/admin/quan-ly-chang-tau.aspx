<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="quan-ly-chang-tau.aspx.cs" Inherits="BanVeTau.admin.quan_ly_chang_tau" %>

<%@ Register Src="~/admin/Control/quanlychangtau.ascx" TagPrefix="uc1" TagName="quanlychangtau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <uc1:quanlychangtau runat="server" id="quanlychangtau" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
</asp:Content>

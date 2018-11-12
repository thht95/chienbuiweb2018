<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="quan-ly-nguoi-dung.aspx.cs" Inherits="BanVeTau.admin.quan_ly_nguoi_dung" %>

<%@ Register Src="~/admin/Control/quanlynguoidung.ascx" TagPrefix="uc1" TagName="quanlynguoidung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <uc1:quanlynguoidung runat="server" id="quanlynguoidung" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
</asp:Content>

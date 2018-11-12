<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="quan-ly-don-hang.aspx.cs" Inherits="BanVeTau.admin.quan_ly_don_hang" %>

<%@ Register Src="~/admin/Control/quanlydonhang.ascx" TagPrefix="uc1" TagName="quanlydonhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <uc1:quanlydonhang runat="server" id="quanlydonhang" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
</asp:Content>

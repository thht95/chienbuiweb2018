<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BanVeTau.admin.Default" %>

<%@ Register Src="~/admin/Control/dashboard.ascx" TagPrefix="uc1" TagName="dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <uc1:dashboard runat="server" id="dashboard" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
    <script type="text/javascript">

    </script>
</asp:Content>

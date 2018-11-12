<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="BanVeTau.admin.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceholder" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Thông tin tài khoản</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="form-horizontal">
                <fieldset>
                    <div class="form-group">
                        <label for="username" class="col-md-3">Tên tài khoản</label>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="txtUserName" placeholder="Tên đăng nhập" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-md-3">Mật khẩu cũ</label>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="txtPassword" required placeholder="Mật khẩu" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="username" class="col-md-3">Mật khẩu mới</label>
                        <div class="col-md-9">
                            <asp:TextBox runat="server" ID="txtPassMoi" placeholder="Mật khẩu mới" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                   
                    <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                            <asp:Button runat="server" ID="btnCapNhatTaikhoan" CssClass="btn btn-primary" Text="Cập nhật" OnClick="btnCapNhatTaikhoan_Click"></asp:Button>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scriptContentPlaceHolder" runat="server">
</asp:Content>

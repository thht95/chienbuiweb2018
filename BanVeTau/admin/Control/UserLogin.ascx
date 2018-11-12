<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.ascx.cs" Inherits="BanVeTau.admin.Control.UserLogin" %>
<li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <i class="fa fa-user fa-fw"></i> <span runat="server" id="username_view"></span> <i class="fa fa-caret-down"></i>
    </a>
    <ul class="dropdown-menu dropdown-user">
        <li><a href="/admin/profile.aspx"><i class="fa fa-user fa-fw"></i>Thông tin tài khoản</a>
        </li>
        <li class="divider"></li>
        <li><a href="/admin/logout.aspx" onclick="return confirm('Bạn chắc chắn muốn thoát trang quản trị.')"><i class="fa fa-sign-out fa-fw"></i>Đăng xuất</a>
        </li>
    </ul>
    <!-- /.dropdown-user -->
</li>
<!-- /.dropdown -->

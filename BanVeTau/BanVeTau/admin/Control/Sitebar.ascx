<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sitebar.ascx.cs" Inherits="BanVeTau.admin.Control.Sitebar" %>
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li>
                <a href="/admin"><i class="fa fa-dashboard fa-fw"></i> Các chức năng chính</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-subway fa-fw"></i>Quản lý nhà ga<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="/admin/quan-ly-nha-ga-den.aspx"> Ga đến</a>
                    </li>
                    <li>
                        <a href="/admin/quan-ly-nha-ga-di.aspx"> Ga đi</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="/admin/quan-ly-chang-tau.aspx"><i class="fa fa-arrows-h"></i> Quản lý chặng tàu</a>
            </li>
            <li>
                <a href="/admin/quan-ly-don-hang.aspx"><i class="fa fa-shopping-cart"></i> Quản lý đơn hàng</a>
            </li>
            <li>
                <a href="/admin/quan-ly-nguoi-dung.aspx"><i class="fa fa-users"></i> Quản lý người dùng</a>
            </li>             
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->
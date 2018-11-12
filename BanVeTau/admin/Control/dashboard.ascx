<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="dashboard.ascx.cs" Inherits="BanVeTau.admin.Control.dashboard" %>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Các chức năng chính</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-subway fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge" style="font-size: 15px;" runat="server" id="count_nhaga"></div>
                        <div>Quản lý nhà ga!</div>
                    </div>
                </div>
            </div>
            <a href="/admin/quan-ly-nha-ga-den.aspx">
                <div class="panel-footer">
                    <span class="pull-left">Nhà ga đến</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
            <a href="/admin/quan-ly-nha-ga-di.aspx">
                <div class="panel-footer">
                    <span class="pull-left">Nhà ga đi</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-green">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-send-o fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge" style="font-size: 15px;" runat="server" id="count_changtau">12</div>
                        <div>Quản lý chặng tàu</div>
                    </div>
                </div>
            </div>
            <a href="/admin/quan-ly-chang-tau.aspx">
                <div class="panel-footer">
                    <span class="pull-left">Vào chức năng</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-shopping-cart fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge" style="font-size: 15px;" runat="server" id="count_donhang">124</div>
                        <div>Quản lý đơn hàng</div>
                    </div>
                </div>
            </div>
            <a href="/admin/quan-ly-don-hang.aspx">
                <div class="panel-footer">
                    <span class="pull-left">Vào chức năng</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-red">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-users fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge" style="font-size: 15px;" runat="server" id="count_ngdung">13</div>
                        <div>Quản lý người dùng</div>
                    </div>
                </div>
            </div>
            <a href="/admin/quan-ly-nguoi-dung.aspx">
                <div class="panel-footer">
                    <span class="pull-left">Vào chức năng</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
</div>
<!-- /.row -->

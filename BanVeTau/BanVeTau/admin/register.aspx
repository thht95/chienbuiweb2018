<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BanVeTau.admin.register" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Đăng ký tài khoản quản trị | trang quản trị bán vé tàu trực tuyến</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/toasterjs/toastr.min.css" rel="stylesheet" />
    <!-- jQuery -->
    <script src="../Scripts/jquery-1.12.4.min.js"></script>
    <script src="Content/toasterjs/toastr.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Đăng ký tài khoản quản trị</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" class="form-horizontal" runat="server" id="Register_form">
                            <fieldset>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input class="form-control" placeholder="Nhập tên đăng nhập" required name="username" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input class="form-control" placeholder="Nhập mật khẩu" required name="password" type="password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <select class="form-control" required name="role">
                                            <option value="admin">Quản trị</option>
                                            <option value="member">Thành viên</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <asp:Button runat="server" ID="btnRegister" OnClick="btnRegister_Click" CssClass="btn btn-primary" Text="Đăng ký tài khoản" />
                                        <a href="/admin/Login.aspx" class="btn btn-success pull-right">Đăng nhập tài khoản</a>
                                    </div>
                                </div>                                
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <script src="../Scripts/bootstrap.min.js"></script>
</body>

</html>


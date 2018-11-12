<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepass.aspx.cs" Inherits="BanVeTau.admin.changepass" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Đổi mật khẩu | trang quản trị bán vé tàu trực tuyến</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/css/sb-admin-2.css" rel="stylesheet" />
    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <!-- jQuery -->
    <script src="../Scripts/jquery-1.12.4.min.js"></script>
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
                        <h3 class="panel-title text-center">Đổi mật khẩu</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" class="form-horizontal" runat="server" id="Login_form">
                            <fieldset>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <span class="alert alert-success col-sm-12">
                                            Chúc mừng bạn đã đổi mật khẩu thành công
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <a href="/admin/Login.aspx" class="btn btn-success btn-block">Đăng nhập lại</a>
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

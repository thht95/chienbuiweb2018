<%@ Page Title="" Language="C#" MasterPageFile="~/View/Shared/Layout.Master" AutoEventWireup="true" CodeBehind="donhang.aspx.cs" Inherits="BanVeTau.donhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentID" runat="server">
    <div class="row" style="margin-top: 50px;">

            <div class="col-md-12">
                <div class="form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <label class="control-label col-md-3">Họ tên khách hàng:</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="hotenkhachhang" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Giới tính:</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="gioitinh" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Email</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="Email" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Địa Chỉ</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="Diachi" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">SDT</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="SDT" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">CMT</label>
                            <div class="col-md-9">
                                <asp:TextBox runat="server" ID="CMT" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                    </fieldset>

                    <div class="form-group">
                        <div class="col-md-9 col-md-offset-3">
                            <asp:Button runat="server" ID="btnTapdonhang" CssClass="btn btn-primary" Text="Cập nhật" OnClick="btnTapdonhang_Click"></asp:Button>
                        </div>
                    </div>

                </div>
            </div>

    </div>
</asp:Content>

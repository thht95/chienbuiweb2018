<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="quanlynguoidung.ascx.cs" Inherits="BanVeTau.admin.Control.quanlynguoidung" %>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Quản lý người dùng</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="col-lg-6">
                <div class="form-horizontal" role="form">

                    <fieldset>
                        <div class="form-group">
                            <label class="col-sm-2" for="txtUser">Tài khoản</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" required="" ID="txtUser" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2" for="txtPass">Mật khẩu</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" required="" ID="txtPass" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2" for="txtDiaChi">Quyền</label>
                            <div class="col-sm-10">
                                
                                <select class="form-control"  required name="role">
                                            <option value="admin">Quản trị</option>
                                            <option value="member">Thành viên</option>
                                        </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button runat="server" ID="btn_ThemTK" Text="Thêm tài khoản" OnClick="btn_ThemTK_Click" class="btn btn-primary"></asp:Button>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="table-responsive">
                    <asp:GridView runat="server" ID="gv_User" CssClass="table"
                        AutoGenerateColumns="false" DataKeyNames="UserID"
                        PageSize="5" AllowPaging="true" EmptyDataText="Chưa có dữ liệu"
                        OnPageIndexChanging="gv_gadi_PageIndexChanging"
                        OnRowCancelingEdit="gv_gadi_RowCancelingEdit"
                        OnRowDeleting="gv_gadi_RowDeleting"
                        OnRowEditing="gv_gadi_RowEditing"
                        OnRowUpdating="gv_gadi_RowUpdating"
                        OnRowDataBound="gv_User_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="UserID" Visible="false" />
                            <asp:BoundField DataField="UserName" HeaderText="Tài khoản" />
                            <asp:BoundField DataField="Pass" HeaderText ="Mật khẩu" />
                             <asp:TemplateField HeaderText = "Quyền">
                            <ItemTemplate>
                                <asp:Label ID="lblQuyen" runat="server" Text='<%# Eval("Role")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                            <asp:DropDownList ID="ddluser" runat="server" DataTextField="Role" DataValueField="Role" AutoPostBack="true" ></asp:DropDownList>
                            </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="true" EditText="Sửa" DeleteText="Xóa" CancelText="Hủy" UpdateText="Cập nhật" />
                            <asp:CommandField ShowDeleteButton="true" EditText="Sửa" DeleteText="Xóa" CancelText="Hủy" UpdateText="Cập nhật" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>



</div>

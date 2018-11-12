<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="quanlygaden.ascx.cs" Inherits="BanVeTau.admin.Control.quanlygaden" %>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Quản lý ga đến</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btn_themga" EventName="click" />
        </Triggers>
        <ContentTemplate>
            <div class="col-lg-6">
                <div class="form-horizontal" role="form">

                    <fieldset>
                        <div class="form-group">
                            <label class="col-sm-2" for="txtMaga">Mã ga</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" required="" ID="txtMaga" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2" for="txtTenGa">Tên ga</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" required="" ID="txtTenGa" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2" for="txtDiaChi">Địa chỉ</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" required="" ID="txtDiaChi" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button runat="server" ID="btn_themga" Text="Thêm ga tàu" OnClick="btn_themga_Click" class="btn btn-primary"></asp:Button>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="table-responsive">
                    <asp:GridView runat="server" ID="gv_gaden" CssClass="table"
                        AutoGenerateColumns="false" DataKeyNames="Id"
                        PageSize="5" AllowPaging="true" EmptyDataText="Chưa có dữ liệu"
                        OnPageIndexChanging="gv_gaden_PageIndexChanging"
                        OnRowCancelingEdit="gv_gaden_RowCancelingEdit"
                        OnRowDeleting="gv_gaden_RowDeleting"
                        OnRowEditing="gv_gaden_RowEditing"
                        OnRowUpdating="gv_gaden_RowUpdating">
                        <Columns>
                            <asp:BoundField DataField="Id" Visible="false" />
                            <asp:BoundField DataField="MaGa" HeaderText="Mã ga" />
                            <asp:BoundField DataField="TenGa" HeaderText="Tên ga" />
                            <asp:BoundField DataField="Address" HeaderText="Địa chỉ" />
                            <asp:CommandField ShowEditButton="true" EditText="Sửa" DeleteText="Xóa" CancelText="Hủy" UpdateText="Cập nhật" />
                            <asp:CommandField ShowDeleteButton="true" EditText="Sửa" DeleteText="Xóa" CancelText="Hủy" UpdateText="Cập nhật" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>



</div>

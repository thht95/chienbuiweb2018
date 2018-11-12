<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="quanlychangtau.ascx.cs" Inherits="BanVeTau.admin.Control.quanlychangtau" %>

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Quản lý chặng tàu</h1>
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
                            <label class="col-sm-4" for="txt_MaChuyenDi">Mã chuyến đi: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txt_MaChuyenDi" DataValueField="Id" DataTextField="MaChuyenDi">
                                </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4" for="txt_TenChuyenDi">Tên chuyến đi: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txt_TenChuyenDi" DataValueField="Id" DataTextField="TenChuyenDi">
                                </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4" for="cb_DiemDi">Điểm đi: </label>
                            <div class="col-sm-8">
                                <asp:DropDownList runat="server" ID="cb_DiemDi" DataValueField="Id" DataTextField="TenGa">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4" for="cb_DiemDen">Điểm đến: </label>
                            <div class="col-sm-8">
                                <asp:DropDownList runat="server" ID="cb_DiemDen" DataValueField="Id" DataTextField="TenGa">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4" for="txtMagaden">Ngày đi:</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txt_NgayDi" TextMode="Date" DataValueField="Id" DataTextField="NgayDi">
                                </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4" for="txt_NgayDen">Ngày đến:</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txt_NgayDen" TextMode="Date" DataValueField="Id" DataTextField="NgayDen">
                                </asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-4" for="txt_SoLuongChang">Số lượng chặng:</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txt_SoLuongChang" DataValueField="Id" DataTextField="SoLuongChang">
                                </asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-4" for="txt_GiaVe">Giá vé:</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txt_GiaVe" DataValueField="Id" DataTextField="GiaVe">
                                </asp:TextBox>
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
                    <asp:GridView runat="server" ID="gv_changtau" CssClass="table"
                        AutoGenerateColumns="false" DataKeyNames="Id"
                        PageSize="5" AllowPaging="true" EmptyDataText="Chưa có dữ liệu"
                        OnPageIndexChanging="gv_changtau_PageIndexChanging"
                        OnRowCancelingEdit="gv_changtau_RowCancelingEdit"
                        OnRowDeleting="gv_changtau_RowDeleting"
                        OnRowEditing="gv_changtau_RowEditing"
                        OnRowUpdating="gv_changtau_RowUpdating"
                        OnRowDataBound="gv_changtau_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="Id" Visible="false" />
                            <asp:BoundField DataField="MaChuyenDi" HeaderText="Mã chuyến đi" />
                            <asp:BoundField DataField="TenChuyenDi" HeaderText="Tên chuyến đi" />       
                            <asp:TemplateField HeaderText = "Ga đến">
                            <ItemTemplate>
                                <asp:Label ID="lblGaDen" runat="server" Text='<%# Eval("GaDen.TenGa")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                            <asp:DropDownList ID="ddlGaDen" runat="server" DataTextField="TenGa" DataValueField="Id" AutoPostBack="true" ></asp:DropDownList>
                            </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText = "Ga đi">
                            <ItemTemplate>
                                <asp:Label ID="lblGaDi" runat="server" Text='<%# Eval("GaDi.TenGa")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                            <asp:DropDownList ID="ddlGaDi" runat="server" DataTextField="TenGa" DataValueField="Id" AutoPostBack="true"></asp:DropDownList>
                            </EditItemTemplate>
                            </asp:TemplateField>

                             <asp:BoundField DataField="NgayDi" HeaderText="Ngày đi" />
                            <asp:BoundField DataField="NgayDen" HeaderText="Ngày đến" />
                             <asp:BoundField DataField="SoLuongChang" HeaderText="Số lượng chặng" />
                            <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" />
                             <asp:BoundField DataField="DaDat" HeaderText="Đã đặt" />

                            <asp:CommandField ShowEditButton="true" EditText="Sửa" DeleteText="Xóa" CancelText="Hủy" UpdateText="Cập nhật" />
                            <asp:CommandField ShowDeleteButton="true" EditText="Sửa" DeleteText="Xóa" CancelText="Hủy" UpdateText="Cập nhật" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>



</div>


<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="quanlydonhang.ascx.cs" Inherits="BanVeTau.admin.Control.quanlydonhang" %>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Quản lý đơn hàng</h1>
    </div>
    <!-- /.col-lg-12 -->
<div class="row">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="col-lg-12">
                <div class="table-responsive">
                    <asp:GridView runat="server" ID="gv_donhang" CssClass="table"
                        AutoGenerateColumns="false" DataKeyNames="Id"
                        PageSize="5" AllowPaging="true" EmptyDataText="Chưa có dữ liệu"
                        OnSelectedIndexChanged="gv_donhang_SelectedIndexChanged"
                     >
                        <Columns>
                            <asp:BoundField DataField="Id" Visible="false" />
                            <asp:BoundField DataField="KhachHang.HoTen" HeaderText="Họ tên khách hàng" />
                            <asp:BoundField DataField="ChangTau.TenChuyenDi" HeaderText="Tên ga" />
                            <asp:BoundField DataField="ChangTau.NgayDi" HeaderText="Ngày đi" />
                            <asp:BoundField DataField="ChangTau.NgayDen" HeaderText="Ngày đến" />
                            <asp:BoundField DataField="DaDat" HeaderText="Tình trạng" />
                           <asp:ButtonField Text="Nhận đơn hàng" CommandName="Select" ItemStyle-Width="30" /> 
                            
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>



</div>

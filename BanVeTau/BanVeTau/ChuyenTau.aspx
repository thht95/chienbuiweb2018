<%@ Page Title="" Language="C#" MasterPageFile="~/View/Shared/Layout.Master" AutoEventWireup="true" CodeBehind="ChuyenTau.aspx.cs" Inherits="BanVeTau.ChuyenTau" %>
<asp:Content runat="server" ID="content1" ContentPlaceHolderID="contentID">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <asp:GridView runat="server" ID="cacchangtau"
                             CssClass="table" AutoGenerateColumns="false" DataKeyNames="Id"
                           OnSelectedIndexChanging="cacchangtau_SelectedIndexChanging" >
                            <Columns>
                                <asp:BoundField DataField="TenChuyenDi" HeaderText="Tên Chuyến Đi" />
                                <asp:BoundField DataField="NgayDi" HeaderText="Ngày đi" />
                                <asp:BoundField DataField="NgayDen" HeaderText="Ngày đến" />
                                <asp:BoundField DataField="SoLuongChang" HeaderText="Số lượng chặng" />
                                <asp:BoundField DataField="GiaVe" HeaderText="Giá vé" />
                                <asp:BoundField DataField="DaDat" HeaderText="Trạng thái" />
                                <asp:ButtonField Text="Đặt vé" CommandName="Select" ItemStyle-Width="30" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

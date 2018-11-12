<%@ Page Title="" Language="C#" MasterPageFile="~/View/Shared/Layout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"   Inherits="BanVeTau.Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content runat="server" ID="content1" ContentPlaceHolderID="contentID">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnTimnhanh" EventName="click" />
        </Triggers>
        <ContentTemplate>


            <div class="row">
                <div class="col-md-12">
                    <div class="form-horizontal">
                        <fieldset>
                            <div class="form-group">
                                <div class="col-md-4">
                                    <asp:DropDownList runat="server" ID="gadi" DataValueField="Id" DataTextField="TenGa" CssClass="form-control"></asp:DropDownList>
                                </div>
                                <div class="col-md-4">
                                    <asp:DropDownList runat="server" ID="gaden" DataValueField="Id" DataTextField="TenGa" CssClass="form-control"></asp:DropDownList>

                                </div>

                                <div class="col-md-4">
                                    <asp:Button runat="server" ID="btnTimnhanh" Text="Tim kiếm chặng tàu" CssClass="btn btn-primary" OnClick="btnTimnhanh_Click" />
                                </div>
                            </div>
                        </fieldset>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <asp:GridView runat="server" ID="cacchangtau"
                            CssClass="table" AutoGenerateColumns="false" DataKeyNames="Id"
                            OnSelectedIndexChanged="cacchangtau_SelectedIndexChanged">
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

           <%-- <asp:Label ID="lblmsg" runat="server" />
            <asp:Button ID="modelPopup" runat="server" Style="display: none" />
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="modelPopup" PopupControlID="updatePanel"
                CancelControlID="btnCancel">
            </asp:ModalPopupExtender>
            <asp:Panel ID="updatePanel" runat="server" BackColor="White" Height="230px" Width="300px" Style="display: none">
                <%--<table >
                    <tr style="background-color: #33CC66">
                        <td colspan="2" align="center">Store Details</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 45%">Stor ID:
                        </td>
                        <td>
                            <asp:Label ID="lblstor_id" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">Store Name:
                        </td>
                        <td>
                            <asp:TextBox ID="txtstor_name" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">Store Address:
                        </td>
                        <td>
                            <asp:TextBox ID="txtstor_address" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">City:
                        </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">State:
                        </td>
                        <td>
                            <asp:TextBox ID="txtstate" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">Zip:
                        </td>
                        <td>
                            <asp:TextBox ID="txtzip" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Update Data" OnClick="btnUpdate_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            </div>--%>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanVeTau.Models;

namespace BanVeTau
{
    public partial class donhang : System.Web.UI.Page
    {
        private BanVeTauEntities db = new BanVeTauEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTapdonhang_Click(object sender, EventArgs e)
        {//
            try
            {
                if (Session["idchangtau"] != null)
                {
                    int _idchangtau;
                    if (int.TryParse(Session["idchangtau"].ToString(), out _idchangtau))
                    {
                        KhachHang _tblKhachHang = new KhachHang();
                        _tblKhachHang.HoTen = hotenkhachhang.Text ?? null;
                        _tblKhachHang.GioiTinh = gioitinh.Text ?? null;
                        _tblKhachHang.Email = Email.Text ?? null;
                        _tblKhachHang.DiaChi = Diachi.Text ?? null;
                        _tblKhachHang.CMT = CMT.Text ?? null;
                        _tblKhachHang.SDT = SDT.Text ?? null;
                        db.KhachHangs.Add(_tblKhachHang);
                        db.SaveChanges();
                        ChangTau _ct = db.ChangTaus.Where(p => p.Id == _idchangtau).FirstOrDefault();
                        DonHang _donhang = new DonHang(); ;
                        Session["ThemDonHang"] = null;
                        Session["ThemDonHang"] = "Bạn đã đặt vé thành công";
                        var _don = new BanVeTauEntities();
                        _don.ThemDonHang(_tblKhachHang.Id, _idchangtau, "Chưa xác nhận");
                        db.SaveChanges();
                        Response.Redirect("~/Themdonhangthanhcong.aspx");
                    }
                }
            }
            catch
            {

                //}
            }
        }
    }
}
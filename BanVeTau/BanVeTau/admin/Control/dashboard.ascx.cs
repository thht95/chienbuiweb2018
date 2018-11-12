using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanVeTau.Models;

namespace BanVeTau.admin.Control
{
    public partial class dashboard : System.Web.UI.UserControl
    {
        BanVeTauEntities db = new BanVeTauEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
	        {
		        count_nhaga.InnerHtml = CountSoNhaGa();
                count_changtau.InnerHtml = CountChangTau();
                count_donhang.InnerHtml = CountDonHang();
                count_ngdung.InnerHtml = CountTaiKhoan();
            }
        }

        private string CountSoNhaGa() {
            var sogaden = db.GaDens.Count();
            var sogadi = db.GaDis.Count();
            return sogaden + " ga đến và " + sogadi + " ga đi";
        }
        private string CountChangTau()
        {
            var sochangtau = db.ChangTaus.Count();
            return "Hiện tại có " + sochangtau.ToString() + " chặng tàu";
        }
        private string CountDonHang()
        {
            var dh = db.DonHangs.Count();
            return "Hiện tại có " + dh.ToString() + " đơn hàng" ;
        }
        private string CountTaiKhoan()
        {
            var tk = db.Users.Count();
            return "Hiện tại có " + tk.ToString() + " tài khoản";
        }
    }
}
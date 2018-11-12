using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanVeTau.Models;
using System.Data;
namespace BanVeTau.admin.Control
{
    public partial class quanlydonhang : System.Web.UI.UserControl
    {
        BanVeTauEntities db = new BanVeTauEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();

            }
        }
        private void LoadData()
        {
            var data = db.DonHangs.ToList();
            gv_donhang.DataSource = data;
            gv_donhang.DataBind();

        }

        protected void gv_donhang_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                // Determine the index of the selected row.
                int index = gv_donhang.SelectedIndex;
                int xxx = Convert.ToInt32( gv_donhang.DataKeys[index].Value.ToString());
                
                var item = db.DonHangs.Where(x => x.Id == xxx).FirstOrDefault();
                if (item != null)
                {
                    item.DaDat = "Đã nhận";
                    db.SaveChanges();
                    LoadData();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Nhận đơn hàng thành công."), true);
                }
            }
            catch
            {

            }
        }
    }
}
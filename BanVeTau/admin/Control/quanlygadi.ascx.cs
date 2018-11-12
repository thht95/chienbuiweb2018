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
    public partial class quanlygadi : System.Web.UI.UserControl
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
            var data = db.GaDis.ToList();
            gv_gadi.DataSource = data;
            gv_gadi.DataBind();

        }

        protected void btn_themga_Click(object sender, EventArgs e)
        {
            try
            {
                GaDi tblGaDi = new GaDi();
                tblGaDi.MaGa = txtMaga.Text ?? null;
                tblGaDi.TenGa = txtTenGa.Text ?? null;
                tblGaDi.Address = txtDiaChi.Text ?? null;
                db.GaDis.Add(tblGaDi);
                db.SaveChanges();
                LoadData();
                //Page.ClientScript.RegisterClientScriptBlock(e.GetType(), "alert", MyHelper.MessagerSuccess("Thêm ga đến thành công."), true);
                ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Thêm ga đến thành công."), true);
                txtTenGa.Text = txtMaga.Text = txtDiaChi.Text = null;
            }
            catch
            {
            }
        }

        protected void gv_gadi_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_gadi.PageIndex = e.NewPageIndex;
            LoadData();
        }

        protected void gv_gadi_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_gadi.EditIndex = -1;
            LoadData();
        }

        protected void gv_gadi_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                GridViewRow row = (GridViewRow)gv_gadi.Rows[e.RowIndex];
                int gaid = Convert.ToInt32(gv_gadi.DataKeys[e.RowIndex].Value.ToString());
                var item = db.GaDis.Where(x => x.Id == gaid).FirstOrDefault();
                if (item != null)
                {
                    db.GaDis.Remove(item);
                    db.SaveChanges();
                    LoadData();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Xóa dữ liệu thành công."), true);
                }

            }
            catch
            {
            }
        }

        protected void gv_gadi_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv_gadi.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void gv_gadi_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int gaid = Convert.ToInt32(gv_gadi.DataKeys[e.RowIndex].Value.ToString());
                GridViewRow row = (GridViewRow)gv_gadi.Rows[e.RowIndex];
                TextBox textMa = (TextBox)row.Cells[1].Controls[0];
                TextBox textTen = (TextBox)row.Cells[2].Controls[0];
                TextBox textDiaChi = (TextBox)row.Cells[3].Controls[0];
                gv_gadi.EditIndex = -1;
                var item = db.GaDis.Where(x => x.Id == gaid).FirstOrDefault();
                if (item != null)
                {
                    item.MaGa = textMa.Text ?? null;
                    item.TenGa = textTen.Text ?? null;
                    item.Address = textDiaChi.Text ?? null;
                    db.SaveChanges();
                    LoadData();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Cập nhật thông tin thành công."), true);
                }
            }
            catch
            {
            }
        }
    }
}
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
    public partial class quanlychangtau : System.Web.UI.UserControl
    {
        BanVeTauEntities db = new BanVeTauEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
                cb_DiemDen.DataSource = getGaDen();
                cb_DiemDen.DataBind();
                cb_DiemDi.DataSource = getGaDi();
                cb_DiemDi.DataBind();
               
            }
        }

        private List<GaDen> getGaDen()
        {
            var data = db.GaDens.ToList();
            return data;

        }
        private List<GaDi> getGaDi()
        {
            var data = db.GaDis.ToList();
            return data;
        }

        private void LoadData()
        {
            var data = db.ChangTaus.ToList();
            gv_changtau.DataSource = data;
            gv_changtau.DataBind();

        }
        protected void btn_themga_Click(object sender, EventArgs e)
        {
            try
            {
                ChangTau _ct = new ChangTau();
                _ct.MaChuyenDi = txt_MaChuyenDi.Text == null ? "" : txt_MaChuyenDi.Text;
                _ct.TenChuyenDi = txt_TenChuyenDi.Text == null ? "" : txt_TenChuyenDi.Text;
                _ct.DiemDi =  int.Parse(cb_DiemDi.SelectedValue.ToString());
                _ct.DiemDen = int.Parse(cb_DiemDen.SelectedValue.ToString());
                _ct.NgayDen = DateTime.Parse(txt_NgayDen.Text);
                _ct.NgayDi = DateTime.Parse(txt_NgayDi.Text);
                _ct.SoLuongChang = int.Parse(txt_SoLuongChang.Text);
                _ct.GiaVe = int.Parse(txt_GiaVe.Text);
                db.ChangTaus.Add(_ct);
                db.SaveChanges();
                LoadData();
                //Page.ClientScript.RegisterClientScriptBlock(e.GetType(), "alert", MyHelper.MessagerSuccess("Thêm ga đến thành công."), true);
                ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Thêm chặng tàu thành công."), true);
                txt_MaChuyenDi.Text = txt_TenChuyenDi.Text = cb_DiemDen.Text = cb_DiemDi.Text = txt_NgayDen.Text = txt_NgayDi.Text = txt_SoLuongChang.Text = txt_GiaVe.Text = null;
            }
            catch 
            {
            }
        }

        protected void gv_changtau_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_changtau.PageIndex = e.NewPageIndex;
            LoadData();
        }

        protected void gv_changtau_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_changtau.EditIndex = -1;
            LoadData();
        }

        protected void gv_changtau_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                GridViewRow row = (GridViewRow)gv_changtau.Rows[e.RowIndex];
                int changtau = Convert.ToInt32(gv_changtau.DataKeys[e.RowIndex].Value.ToString());
                var item = db.ChangTaus.Where(x => x.Id == changtau).FirstOrDefault();
                if (item != null)
                {
                    db.ChangTaus.Remove(item);
                    db.SaveChanges();
                    LoadData();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Xóa dữ liệu thành công."), true);
                }
            }
            catch 
            {
            }
        }

        protected void gv_changtau_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv_changtau.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void gv_changtau_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int _updateCT = Convert.ToInt32(gv_changtau.DataKeys[e.RowIndex].Value.ToString());
                GridViewRow row = (GridViewRow)gv_changtau.Rows[e.RowIndex];
                TextBox txtMaChuyendi = (TextBox)row.Cells[1].Controls[0];
                TextBox txtTenCD = (TextBox)row.Cells[2].Controls[0];
                TextBox txtNDi = row.Cells[5].Controls[0] as TextBox;
                TextBox txtND = row.Cells[6].Controls[0] as TextBox;
                TextBox txtSLC = (TextBox)row.Cells[7].Controls[0];
                TextBox txtGV = (TextBox)row.Cells[8].Controls[0];
                gv_changtau.EditIndex = -1;
                var item = db.ChangTaus.Where(p => p.Id == _updateCT).FirstOrDefault();
                if (item != null)
                {
                    item.MaChuyenDi = txtMaChuyendi.Text;
                    item.TenChuyenDi = txtTenCD.Text;
                    item.DiemDi = int.Parse((gv_changtau.Rows[e.RowIndex].FindControl("ddlGaDi") as DropDownList ).SelectedValue.ToString());
                    item.DiemDen = int.Parse((gv_changtau.Rows[e.RowIndex].FindControl("ddlGaDen") as DropDownList).SelectedValue.ToString());
                    item.NgayDi = Convert.ToDateTime(txtNDi.Text);
                    item.NgayDen = Convert.ToDateTime(txtND.Text);
                    item.SoLuongChang = Convert.ToInt32(txtSLC.Text);
                    item.GiaVe = Convert.ToInt32(txtGV.Text);
                    db.SaveChanges();
                    LoadData();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Cập nhật thông tin thành công."), true);
                }


            }
            catch 
            {
            }
        }



      

        protected void gv_changtau_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var ddl = e.Row.FindControl("ddlGaDen") as DropDownList;
                var ddl2 = e.Row.FindControl("ddlGaDi") as DropDownList;
                if (ddl != null && ddl2 != null)
                {

                    ddl.DataSource = getGaDen();
                    ddl.DataBind();
                    ddl2.DataSource = getGaDi();
                    ddl2.DataBind();
                }
            }
        }

        protected void gv_changtau_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            var ddl = e.Row.FindControl("ddlGaDen") as DropDownList;
            var ddl2 = e.Row.FindControl("ddlGaDi") as DropDownList;
            if (ddl != null && ddl2 != null)
            {

                ddl.DataSource = getGaDen();
                ddl.DataBind();
                ddl2.DataSource = getGaDi();
                ddl2.DataBind();
            }

        }
    }
}
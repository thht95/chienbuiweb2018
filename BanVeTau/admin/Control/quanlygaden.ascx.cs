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
    
    public partial class quanlygaden : System.Web.UI.UserControl
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
            var data = db.GaDens.ToList();
            gv_gaden.DataSource = data;
            gv_gaden.DataBind();           
            
        }
        
        protected void gv_gaden_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_gaden.PageIndex = e.NewPageIndex;
            LoadData();
        }

        protected void gv_gaden_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_gaden.EditIndex = -1;
            LoadData();
        }

        protected void gv_gaden_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                GridViewRow row = (GridViewRow)gv_gaden.Rows[e.RowIndex];
                int gaid = Convert.ToInt32(gv_gaden.DataKeys[e.RowIndex].Value.ToString());
                var item = db.GaDens.Where(x => x.Id == gaid).FirstOrDefault();
                if (item != null)
                {
                    db.GaDens.Remove(item);
                    db.SaveChanges();
                    LoadData();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Xóa dữ liệu thành công."), true);
                }
                
            }
            catch 
            {
            }
        }

        protected void gv_gaden_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv_gaden.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void gv_gaden_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int gaid = Convert.ToInt32(gv_gaden.DataKeys[e.RowIndex].Value.ToString());
                GridViewRow row = (GridViewRow)gv_gaden.Rows[e.RowIndex];
                TextBox textMa = (TextBox)row.Cells[1].Controls[0];
                TextBox textTen = (TextBox)row.Cells[2].Controls[0];
                TextBox textDiaChi = (TextBox)row.Cells[3].Controls[0];
                gv_gaden.EditIndex = -1;
                var item = db.GaDens.Where(x => x.Id == gaid).FirstOrDefault();
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

        protected void btn_themga_Click(object sender, EventArgs e)
        {
            try
            {
                GaDen tblGaDen = new GaDen();
                tblGaDen.MaGa = txtMaga.Text ?? null;
                tblGaDen.TenGa = txtTenGa.Text ?? null;
                tblGaDen.Address = txtDiaChi.Text ?? null;
                db.GaDens.Add(tblGaDen);
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

      
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanVeTau.Models;
namespace BanVeTau.admin.Control
{
    public partial class quanlynguoidung : System.Web.UI.UserControl
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
            var data = db.Users.ToList();
            gv_User.DataSource = data;
            gv_User.DataBind();

        }
        protected void btn_ThemTK_Click(object sender, EventArgs e)
        {
            try
            {
                User tblUser = new User();
                tblUser.UserName = txtUser.Text ?? null;
                tblUser.Pass = txtPass.Text ?? null;
              tblUser.Role = Request.Form["role"].ToString();
                tblUser.IsLocked = false;
                db.Users.Add(tblUser);
                db.SaveChanges();
                ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Thêm tài khoản đến thành công."), true);
                txtUser.Text = txtPass.Text = "";
                LoadData();
            }
            catch
            {
            }
        }

        protected void gv_gadi_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_User.PageIndex = e.NewPageIndex;
            LoadData();
        }

        protected void gv_gadi_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv_User.EditIndex = -1;
            LoadData();
        }

        protected void gv_gadi_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                GridViewRow row = (GridViewRow)gv_User.Rows[e.RowIndex];
                int id = Convert.ToInt32(gv_User.DataKeys[e.RowIndex].Value.ToString());
                var item = db.Users.Where(x => x.UserID == id).FirstOrDefault();
                if (item != null)
                {
                    db.Users.Remove(item);
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

            gv_User.EditIndex = e.NewEditIndex;
            LoadData();
        }

        protected void gv_gadi_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(gv_User.DataKeys[e.RowIndex].Value.ToString());
                GridViewRow row = (GridViewRow)gv_User.Rows[e.RowIndex];
                TextBox textUs = (TextBox)row.Cells[1].Controls[0];
                TextBox textPass = (TextBox)row.Cells[2].Controls[0];
              
                gv_User.EditIndex = -1;
                var item = db.Users.Where(x => x.UserID == id).FirstOrDefault();
                if (item != null)
                {
                    item.UserName = textUs.Text ?? null;
                    item.Pass = textPass.Text ?? null;
                    item.Role = (gv_User.Rows[e.RowIndex].FindControl("ddluser") as DropDownList).SelectedValue.ToString();
                    db.SaveChanges();
                    LoadData();
                    ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "alert", MyHelper.MessagerstrSuccess("Cập nhật thông tin thành công."), true);
                }
            }
            catch
            {
            }
        }

        protected void gv_User_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            var ddl = e.Row.FindControl("ddluser") as DropDownList;
            if (ddl != null)
            {
                var data = db.Users.Select(p => new { Role = p.Role }).Distinct().ToList();
                ddl.DataSource = data;
                ddl.DataBind();
            }
        }
    }
}
using BanVeTau.Models;
using System;
using System.Web.UI;
using System.Linq;

namespace BanVeTau.admin
{
    public partial class profile : System.Web.UI.Page
    {
        BanVeTauEntities db = new BanVeTauEntities();
        User users = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Header.Title = "Thông tin tài khoản | Trang quản trị bán vé tàu trực tuyến";
                #region CheckUserLogin
                if (Session["user"] != null)
                {
                    users = Session["user"] as User;
                    if (users == null)
                    {
                        Response.Redirect("~/admin/Login.aspx");
                    }
                }
                else
                {
                    Response.Redirect("~/admin/Login.aspx");
                }
                #endregion

                if (Session["update"] != null)
                {
                    if (Session["update"].ToString() == "updateerror")
                    {
                        Page.ClientScript.RegisterClientScriptBlock(e.GetType(), "alert", MyHelper.MessagerError("Mật khẩu cũ không đúng."));
                        Session.Remove("update");
                    }
                }

                LoadThongTinTaiKhoan();
               
            }
        }

        private void LoadThongTinTaiKhoan()
        {
            try
            {
                if (Session["user"] != null)
                {
                    users = Session["user"] as User;
                    if (users != null)
                    {
                        txtUserName.Text = users.UserName ?? null;
                    }
                }
            }
            catch
            {
            }
        }

        protected void btnCapNhatTaikhoan_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                users = Session["user"] as User;
                if (users != null)
                {
                    string strPass = MyHelper.Encrypt(txtPassword.Text);
                    var item = db.Users.Where(x => x.UserName == users.UserName && x.Pass == strPass).FirstOrDefault();
                    if (item != null)
                    {
                        item.Pass = MyHelper.Encrypt(txtPassMoi.Text);
                        db.SaveChanges();
                        Session.Remove("user");
                        Session["update"] = null;
                        Session["update"] = "updateok";
                         Response.Redirect("/admin/changepass.aspx");
                    }
                    else
                    {
                        Session["update"] = null;
                        Session["update"] = "updateerror";
                        Response.Redirect("/admin/profile.aspx");
                    }
                }
            }
        }
    }
}
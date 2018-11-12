using BanVeTau.Models;
using System;
using System.Linq;
using System.Web.UI;

namespace BanVeTau.admin
{
    public partial class Login : System.Web.UI.Page
    {
        BanVeTauEntities db = new BanVeTauEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {
                    Response.Redirect("~/admin");
                }
                if (Session["dangnhap"] != null)
                {
                    if (Session["dangnhap"].ToString() == "error")
                    {
                        Page.ClientScript.RegisterClientScriptBlock(e.GetType(), "alert", MyHelper.MessagerError("Tên đăng nhập hoặc mật khẩu không đúng."));
                        Session.Remove("dangnhap");
                    }
                }
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                string username = Request.Form["username"].ToString();
                string password = Request.Form["password"].ToString();
                var item = db.Users.Where(x => x.UserName == username && x.Pass == password).FirstOrDefault();
                if (item != null)
                {
                    Session["user"] = null;
                    Session["user"] = item;
                    Response.Redirect("~/admin");
                }
                else
                {
                    Session["dangnhap"] = null;
                    Session["dangnhap"] = "error";
                    Response.Redirect("~/admin/Login.aspx");
                }
            }
            catch
            {
            }
        }
    }
}
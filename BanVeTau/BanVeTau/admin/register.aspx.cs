using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanVeTau.Models;

namespace BanVeTau.admin
{
    public partial class register : System.Web.UI.Page
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
                if (Session["IsRegitered"] != null)
                {
                    if (Session["IsRegitered"].ToString() == "dangkyxong")
                    {
                        Page.ClientScript.RegisterClientScriptBlock(e.GetType(), "alert", MyHelper.MessagerSuccess("Đăng ký thành công, bạn có thể đăng nhập bằng tài khoản này."));
                        Session.Remove("IsRegitered");
                    }
                    else if (Session["IsRegitered"].ToString() == "dangkyerror")
                    {
                        Page.ClientScript.RegisterClientScriptBlock(e.GetType(), "alert", MyHelper.MessagerError("Tên tài khoản người dùng đã tồn tại."));
                        Session.Remove("IsRegitered");
                    }
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string username = Request.Form["username"].ToString();
                var data = db.Users.Where(x => x.UserName == username).FirstOrDefault();
                if (data != null)
                {
                    Session["IsRegitered"] = null;
                    Session["IsRegitered"] = "dangkyerror";
                    Response.Redirect("~/admin/register.aspx");
                }
                else
                {
                    BanVeTau.Models.User tblUser = new Models.User();
                    tblUser.UserName = Request.Form["username"].ToString();
                    tblUser.Pass =Request.Form["password"].ToString();
                    tblUser.Role = Request.Form["role"].ToString();
                    tblUser.IsLocked = false;
                    db.Users.Add(tblUser);
                    db.SaveChanges();
                    Session["IsRegitered"] = null;
                    Session["IsRegitered"] = "dangkyxong";
                    Response.Redirect("~/admin/register.aspx");
                }                
            }
            catch 
            {
            }
        }
               

    }
}
﻿using BanVeTau.Models;
using System;
using System.Web.UI;

namespace BanVeTau.admin
{
    public partial class quan_ly_nha_ga_di : System.Web.UI.Page
    {
        BanVeTauEntities db = new BanVeTauEntities();
        User users = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Header.Title = "Quản lý ga đi | Trang quản trị bán vé tàu trực tuyến";
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
            }
        }
    }
}
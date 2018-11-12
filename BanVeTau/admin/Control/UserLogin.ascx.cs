using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanVeTau.Models;

namespace BanVeTau.admin.Control
{
    public partial class UserLogin : System.Web.UI.UserControl
    {
        BanVeTauEntities db = new BanVeTauEntities();
        User user = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {
                    user = Session["user"] as User;
                    if (user != null)
	                {
                        username_view.InnerHtml = "Xin chào " + user.UserName;
	                }
                }
            }
        }
    }
}
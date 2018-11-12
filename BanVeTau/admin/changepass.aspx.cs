using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BanVeTau.admin
{
    public partial class changepass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["update"] != null)
            {
                if (Session["update"].ToString() == "updateok")
                {
                    Session.Remove("update");
                }
            }
            else
            {
                Response.Redirect("~/admin/Login.aspx");
            }
        }
    }
}
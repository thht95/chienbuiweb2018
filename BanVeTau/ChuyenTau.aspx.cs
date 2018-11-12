using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanVeTau.Models;

namespace BanVeTau
{
    public partial class ChuyenTau : System.Web.UI.Page
    {
        BanVeTauEntities db = new BanVeTauEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadListChuyenTau();
        }
        private void LoadListChuyenTau()
        {
            try
            {
                var data = db.ChangTaus.ToList();
                cacchangtau.DataSource = data;
                cacchangtau.DataBind();
            }
            catch
            {

            }
        }

        protected void cacchangtau_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            try
            {

                // Determine the index of the selected row.
                int index = cacchangtau.SelectedIndex;
                var xxx = cacchangtau.DataKeys[index].Value.ToString();
                Session["idchangtau"] = null;
                Session["idchangtau"] = xxx;

                Response.Redirect("~/donhang.aspx");
            }
            catch
            {

            }
        }
    }
}
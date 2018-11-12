using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BanVeTau.Models;

namespace BanVeTau
{
    public partial class Default : System.Web.UI.Page
    {

        private BanVeTauEntities db = new BanVeTauEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadListGadi();
                LoadListGaden();

            }
        }

        private void LoadListGadi()
        {
            try
            {
                var data = db.GaDis.ToList();
                gadi.DataSource = data;
                gadi.DataBind();
            }
            catch
            {

            }
        } 

        private void LoadListGaden()
        {
            try
            {
                var data = db.GaDens.ToList();
                gaden.DataSource = data;
                gaden.DataBind();
            }
            catch
            {

            }
        }

        protected void btnTimnhanh_Click(object sender, EventArgs e)
        {
            try
            {
                int _igadi;
                int _igaden;
                _igaden = Convert.ToInt32(gaden.SelectedItem.Value);
                _igadi = Convert.ToInt32(gadi.SelectedItem.Value);
                if (_igaden != 0 && _igadi != 0)
                {
                    var data = db.ChangTaus.Where(x => x.DiemDi == _igadi && x.DiemDen == _igaden).ToList();
                    // lam tiep dc ko de roi
                    cacchangtau.DataSource = data;
                    cacchangtau.DataBind();

                    //tam thời làm 2 dk cho nhanh. màu mè sau. va
                }
            }
            catch 
            {

            }
        }

        //protected void cacchangtau_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        //{
        //    try
        //    {
        //        GridViewRow row = cacchangtau.Rows[e.NewSelectedIndex];

        //        // You can cancel the select operation by using the Cancel
        //        // property. For this example, if the user selects a customer with 
        //        // the ID "ANATR", the select operation is canceled and an error message
        //        // is displayed.
        //        if (row != null)
        //        {
        //            e.Cancel = true;
        //            var xx = row;
        //        }
        //    }
        //    catch 
        //    {
        //    }
        //}
               

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void cacchangtau_SelectedIndexChanged(object sender, EventArgs e)
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
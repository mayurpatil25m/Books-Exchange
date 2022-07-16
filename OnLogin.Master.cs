using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Book_Exchange
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                UID_label.Text = Session["UID"].ToString();
            }
            catch (Exception cee) { Response.Redirect("Login.aspx"); }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Final_Book_Exchange
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=Localhost;database=Books;uid=sa;password=server@123");
        SqlCommand cmd;
        SqlDataAdapter DA;
        DataSet DS = new DataSet();
        DataTable DT = new DataTable(); 
         
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public string uname;
        protected void Submit_Button_Click(object sender, EventArgs e)
        {
            try
            {

                DA = new SqlDataAdapter($"SELECT UNAME FROM NEWACC WHERE EMAIL='{Email_TextBox.Text}' AND PASS='{Password_TextBox.Text}'", con);
                DA.Fill(DS, "LI");
                uname = DS.Tables["LI"].Rows[0][0].ToString();

                Session["UID"] = Email_TextBox.Text;
                Session["uname"] = uname;
                Response.Redirect("OnHome.aspx");
            }
            catch (Exception ee) { Response.Write("<script> alert('Invalid User') </script>"); }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Final_Book_Exchange
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=Localhost;database=Books;uid=sa;password=server@123");
        SqlCommand cmd;
        SqlDataAdapter DA;
        DataSet DS = new DataSet();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Search_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Options_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        public string book_name, author_name, category;
        protected void Search_Button_Click(object sender, EventArgs e)
        {
            if (Options_DropDownList.SelectedIndex == 0)
            {
                Bookname_DropDownList.Visible = true;
                Author_DropDownList.Visible = false;
                Category_DropDownList.Visible = false;
            }
            else if (Options_DropDownList.SelectedIndex == 1)
            {
                Bookname_DropDownList.Visible = false;
                Author_DropDownList.Visible = true;
                Category_DropDownList.Visible = false;
            }
            else if (Options_DropDownList.SelectedIndex == 2)
            {
                Bookname_DropDownList.Visible = false;
                Author_DropDownList.Visible = false;
                Category_DropDownList.Visible = true;
            }

            try
            {

                DA = new SqlDataAdapter($"SELECT BOOK_NAME AND AUTHOR_NAME AND CATEGORY FROM NEWBOOK WHERE BOOK_NAME='{Bookname_DropDownList.Text}' AND AUTHOR='{Author_DropDownList.Text}' AND CATEGORY='{Category_DropDownList.Text}'", con);
                DA.Fill(DS, "LI");
                book_name= DS.Tables["LI"].Rows[0][0].ToString();
                author_name = DS.Tables["LI"].Rows[0][0].ToString();
                category = DS.Tables["LI"].Rows[0][0].ToString();
            }
            catch (Exception ee) { Response.Write("<script> alert('Book Not Found') </script>"); }
        }
    }
}
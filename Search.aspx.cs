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
    
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=Localhost;database=Books;uid=sa;password=server@123");
        SqlCommand cmd;
        SqlDataAdapter DA;
        DataSet DS = new DataSet();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string book_name;
        protected void Butsearch_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                DA = new SqlDataAdapter($"SELECT BOOK_NAME ,AUTHOR,BOOK_SUMMARY , BOOK_COVER FROM NEWBOOK WHERE BOOK_NAME='{Textsearch.Text}' ", con);
                DA.Fill(DS, "DT");
                search_GridView.DataSource = DS.Tables["NEWBOOK"];
                search_GridView.DataBind();

                con.Close();
            }
            catch (Exception ee) { Response.Write("<script> alert('Book Not Found ') </script>"); }

            if(book_name == Textsearch.Text)
            {
                search_GridView.Visible = true;   
            }
        }
    }
}
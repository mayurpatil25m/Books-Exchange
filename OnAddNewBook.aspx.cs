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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=Localhost;database=Books;uid=sa;password=server@123");
        SqlCommand cmd;
        SqlDataAdapter DA;
        DataSet DS = new DataSet();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ID_label.Text = Session["UID"].ToString();
            }
            catch (Exception EE) { Response.Redirect("Login.aspx"); }

        }

        protected void Submit_Button_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {

                var filepath = "book_cover/" + DateTime.Now.ToLongDateString() + FileUpload.FileName.ToString();
                string query = $"INSERT INTO NEWBOOK VALUES('{BookName_TextBox.Text.ToUpper()}','{Author_TextBox.Text.ToUpper()}','{Category_DropDownList.Text}',0,'{ID_label.Text}','{book_summery.Text}','{filepath}')";

                con.Open();
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();

                FileUpload.SaveAs(Server.MapPath(filepath));
                NEWBOOK_SqlDataSource.DataBind();
                Book_GridView.DataBind();

                Response.Redirect("OnHome.aspx");
            }
            else
            {
                Response.Write("<script> alert('Please Select Book Cover ') </script>");
            }

        }
    }
}
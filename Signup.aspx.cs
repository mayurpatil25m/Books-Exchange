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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=Localhost;database=Books;uid=sa;password=server@123");
        SqlCommand cmd;
        SqlDataAdapter DA;
        DataSet DS = new DataSet();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public int SERIAL;
        protected void Submit_Button_Click(object sender, EventArgs e)
        {
            if (Password.Text == Cpassword.Text)
            {
                try
                {

                DA = new SqlDataAdapter($"SELECT SERIAL FROM NEWACC WHERE EMAIL = '{Email_TextBox.Text}'", con);
                DA.Fill(DT);
                SERIAL = int.Parse(DT.Rows[0][0].ToString());
                }catch(Exception EE) { SERIAL = 0; }

                if (SERIAL > 0)
                {
                    Response.Write("<script> alert('Email Already Exist')</script> ");
                }
                else
                {
                    cmd = new SqlCommand($"insert into NEWACC values('{UNAME.Text.ToUpper()}','{Email_TextBox.Text.ToLower()}','{Gender_DropDownList.Text}','{Password.Text}')", con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("AddNewBook.aspx");

                    UNAME.Text = "";
                    Email_TextBox.Text = "";
                    Gender_DropDownList.Text = "";
                    Password.Text = "";
                    Cpassword.Text = "";
                }

            }
            else
            {
                Response.Write("<script> alert('Password and Conform Password is not Same.')</script");
            }
        }
    }
}
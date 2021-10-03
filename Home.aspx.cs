using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Library_Management_System
{
    public partial class Home : System.Web.UI.Page
    {
        private static string ConnectionString = WebConfigurationManager.ConnectionStrings["LibraryManagementSystem"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM tb_bookinfo", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();

            /*
            SqlConnection con2 = new SqlConnection(ConnectionString);            
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM tb_reader", con2);
            con2.Open();
            SqlDataReader reader2 = cmd2.ExecuteReader();
            GridView2.DataSource = reader2;
            GridView2.DataBind();

            con2.Close();

            SqlConnection con3 = new SqlConnection(ConnectionString);
            SqlCommand cmd3 = new SqlCommand("SELECT * FROM tb_admin", con3);
            con3.Open();
            SqlDataReader reader3 = cmd3.ExecuteReader();
            GridView3.DataSource = reader3;
            GridView3.DataBind();

            con3.Close();
            */
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Library_Management_System
{
    public class AdminManage
    {
        private static string ConnectionString = WebConfigurationManager.ConnectionStrings["LibraryManagementSystem"].ConnectionString;

        // GetAdminId() //
        public string GetAdminId()
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            try
            {                                
                SqlCommand cmd = new SqlCommand("SELECT COUNT(Id) as TotalId FROM tb_admin", con);
                con.Open();
                object TotalId = cmd.ExecuteScalar();
                int nextAdminId = Convert.ToInt32(TotalId) + 1;
                return nextAdminId.ToString();
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            finally
            {
                con.Close();
            }
            
        }

        public string AddAdmin(string Id, string Name, string Pwd)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                string query = "INSERT INTO tb_admin(Id, Name, Pwd) VALUES(@Id, @Name, @Pwd)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Pwd", Pwd);
                con.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    return "Record Inserted Succesfully into the Database";                    
                }
                else
                {
                    return "Fail! Couldn't Insert Data!";
                }
            }            
        }

        public string UpdateAdmin(string Id, string Name, string Pwd)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            string query = "UPDATE tb_admin SET Name = @Name, Pwd = @Pwd WHERE Id = @Id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Pwd", Pwd);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            con.Close();
            if (k != 0)
            {
                return "Record Updated Succesfully";
            }
            else
            {
                return "Fail! Couldn't Update Data!";
            }
        }

        public string DeleteAdmin(string Id)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            string query = "DELETE FROM tb_admin WHERE Id = @Id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Id", Id);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            con.Close();
            if (k != 0)
            {
                return "Record Deleted Succesfully";
            }
            else
            {
                return "Fail! Couldn't Delete Data!";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace InternshipWebsite
{
    public class dbCodes
    {
        public static SqlConnection con = getConnection();

        public static SqlConnection getConnection()
        {
            string connectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Neslihan\Documents\internship.mdf; Integrated Security = True; Connect Timeout = 30";
            SqlConnection connectionObject = new SqlConnection(connectionString);
            return connectionObject;
        }

        public static Boolean adminLogin(string username, string password)
        {
            Boolean flag = false;
            SqlCommand sqlCommand = new SqlCommand("select * from admin where name=@name and password=@password", con);
            sqlCommand.Parameters.AddWithValue("@name", username);
            sqlCommand.Parameters.AddWithValue("@password", password);

            con.Open();
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            if (sqlDataReader.HasRows)
            {
                flag = true;
                con.Close();
            }
            con.Close();
            return flag;
        }


        public static Boolean recipeControl(string recipeName)
        {
            Boolean flag = false;
            SqlCommand sqlCommand = new SqlCommand("select * from recipe where title=@recipeName", con);
            sqlCommand.Parameters.AddWithValue("@recipeName", recipeName);

            con.Open();
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            if (sqlDataReader.HasRows)
            {
                flag = true;
                con.Close();
            }
            con.Close();
            return flag;
        }

        public static void addRecipe(String recipeName, String recipeExplanation, String recipeCategory, String recipeImage)
        {
            SqlCommand sqlCommand = new SqlCommand("insert into recipe (title, explanation, category, image) values (@title, @explanation, @category, @image)", con);
            sqlCommand.Parameters.AddWithValue("@title", recipeName);
            sqlCommand.Parameters.AddWithValue("@explanation", recipeExplanation);
            sqlCommand.Parameters.AddWithValue("@category", recipeCategory);
            sqlCommand.Parameters.AddWithValue("@image", "~/images/" + recipeImage);

            con.Open();
            sqlCommand.ExecuteNonQuery();
            con.Close();
        }

        public static DataTable showImage (string image)
        {
            DataTable dataTable = new DataTable();

            SqlCommand sqlCommand = new SqlCommand("select image as 'Recipe Photo' from recipe", con);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            con.Open();
            adapter.Fill(dataTable);
            con.Close();
            return dataTable;
        } 

        public static DataTable listRecipe(string recipeName)
        {
            DataTable dataTable = new DataTable();

            SqlCommand sqlCommand = new SqlCommand("select Id as 'Recipe ID', title as 'Recipe Name', explanation as 'Explanation', category as 'Category', image as 'Image' from recipe where title like '" + recipeName + "%'", con);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            con.Open();
            adapter.Fill(dataTable);
            con.Close();
            return dataTable;
        
        }
        public static void contactMessages(string email, string message)
        {
            SqlCommand sqlCommand = new SqlCommand("insert into contact (email, message) values (@email, @message)", con);
            sqlCommand.Parameters.AddWithValue("@email", email);
            sqlCommand.Parameters.AddWithValue("@message", email);

            con.Open();
            sqlCommand.ExecuteNonQuery();
            con.Close();
        }

        public static Boolean messageControl(string message)
        {
            Boolean flag = false;
            SqlCommand sqlCommand = new SqlCommand("select * from contact where message=@message", con);
            sqlCommand.Parameters.AddWithValue("@message", message);

            con.Open();
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            if (sqlDataReader.HasRows)
            {
                flag = true;
                con.Close();
            }
            con.Close();
            return flag;
        }






    }
}
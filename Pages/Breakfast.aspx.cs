using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternshipWebsite
{
    public partial class Breakfast : System.Web.UI.Page
    {
        SqlConnection con = dbCodes.getConnection(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand sqlCommand = con.CreateCommand();
            sqlCommand.CommandType = CommandType.Text;
            sqlCommand.CommandText = "select title, explanation, image from recipe where category=1";
            sqlCommand.ExecuteNonQuery();
            DataTable dataTable = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand);
            dataAdapter.Fill(dataTable);
            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();
            con.Close();
            

        }
        
        
    }
   
}
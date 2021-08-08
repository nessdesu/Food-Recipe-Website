using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternshipWebsite
{
    public partial class Dinner : System.Web.UI.Page
    {
        public static SqlConnection con = dbCodes.getConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand sqlCommand = con.CreateCommand();
            sqlCommand.CommandType = CommandType.Text;
            sqlCommand.CommandText = "select title, explanation, image from recipe where category=3";
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
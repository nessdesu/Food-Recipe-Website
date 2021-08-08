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
    public partial class mainPage : System.Web.UI.Page
    {
        public static SqlConnection con = dbCodes.getConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand sqlCommand = con.CreateCommand();
            sqlCommand.CommandType = CommandType.Text;
            sqlCommand.CommandText = "select title, explanation, image from recipe";
            sqlCommand.ExecuteNonQuery();
            DataTable dataTable = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCommand);
            dataAdapter.Fill(dataTable);
            Repeater1.DataSource = dataTable;
            Repeater1.DataBind();
            con.Close();

        }

        protected void MsgButton_Click(object sender, EventArgs e)
        {
            String email = txtContactName.Text;
            String message = txtMessage.Text;
            if (dbCodes.messageControl(message) == false)
            {

                if (!string.IsNullOrEmpty(txtContactName.Text) && !string.IsNullOrEmpty(txtMessage.Text))
                {
                    dbCodes.contactMessages(email, message);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Message successfully delivered.')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Such a message is existing.')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill in all the blanks.')", true);
            }


        }
    }

}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternshipWebsite
{
    public partial class adminLogin : System.Web.UI.Page
    {
        public static SqlConnection con = dbCodes.getConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String username = txtName.Text;
            String password = txtPassword.Text;
            if (dbCodes.adminLogin(username, password) == true)
            {
                Response.Redirect("Panel.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Hatali giris!')", true);
            }
        }
    }
}
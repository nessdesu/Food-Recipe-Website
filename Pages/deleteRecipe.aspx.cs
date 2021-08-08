using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternshipWebsite
{
    public partial class deleteRecipe : System.Web.UI.Page
    {
        SqlConnection con = dbCodes.getConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GridView1.DataSource = dbCodes.listRecipe(txtSearch.Text);
                GridView1.DataBind();
            }
        }

        protected void GridView1_Commands(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == ("delete"))
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                Label tokenLabel = (Label)GridView1.Rows[rowIndex].FindControl("lblNo");

                SqlCommand sqlCommand = new SqlCommand("delete from recipe where Id='" + Convert.ToInt32(tokenLabel.Text) + "'", con);
                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();
                GridView1_Refresh();
            }
            else if (e.CommandName == ("update"))
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                Label tokenLabel = (Label)GridView1.Rows[rowIndex].FindControl("lblNo");
                TextBox txtRecipeName = (TextBox)GridView1.Rows[rowIndex].FindControl("txtRecipeName");
                TextBox txtExplanation = (TextBox)GridView1.Rows[rowIndex].FindControl("txtExplanation");
                DropDownList Category = (DropDownList)GridView1.Rows[rowIndex].FindControl("Category");
                Image Image = (Image)GridView1.Rows[rowIndex].FindControl("Image");

                SqlCommand sqlCommand = new SqlCommand("UPDATE recipe SET title=@rTitle, explanation=@rExplain, category=@rCat, image=@rImg where Id=@rId", con);
                sqlCommand.Parameters.AddWithValue("@rTitle", txtRecipeName.Text);
                sqlCommand.Parameters.AddWithValue("@rExplain", txtExplanation.Text);
                sqlCommand.Parameters.AddWithValue("@rCat", Category.SelectedValue);
                sqlCommand.Parameters.AddWithValue("@rImg", "~/images/"+Image);

                sqlCommand.Parameters.AddWithValue("@rId", Convert.ToInt32(tokenLabel.Text));

                con.Open();
                sqlCommand.ExecuteNonQuery();
                con.Close();
                GridView1_Refresh();
            }
        }
        public void GridView1_Refresh()
        {
            GridView1.DataSource = dbCodes.listRecipe(txtSearch.Text);
            GridView1.DataBind();
        }

        protected void Search(object sender, EventArgs e)
        {
            GridView1_Refresh();
        }
    }
}
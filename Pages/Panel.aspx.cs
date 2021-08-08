using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternshipWebsite
{
    public partial class Panel : System.Web.UI.Page
    {   

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tarifEkle_Click(object sender, EventArgs e)
        {
            Response.Redirect("newRecipe.aspx");
        }

        protected void recipeDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("deleteRecipe.aspx");
        }
    }
}
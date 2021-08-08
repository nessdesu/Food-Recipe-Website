using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternshipWebsite
{
    public partial class newRecipe : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String recipeName = txtTitle.Text;
            String recipeExplanation = txtExplanation.Text;
            String recipeCategory = category.SelectedValue;
            string recipeImage = Path.GetFileName(FileImgSave.PostedFile.FileName);
            FileImgSave.SaveAs(Server.MapPath("/images/" + recipeImage));
       
           

            if (!string.IsNullOrEmpty(txtTitle.Text) && !string.IsNullOrEmpty(txtExplanation.Text)&& Convert.ToInt32(category.SelectedValue)!= 9999 && !string.IsNullOrEmpty(FileImgSave.FileName))
            {
                if (dbCodes.recipeControl(recipeName) == false)
                {
                    
                    dbCodes.addRecipe(recipeName, recipeExplanation, recipeCategory, recipeImage);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully saved.')", true);

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Such a recipe is existing.')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill in all the blanks.')", true);
            }
        }
    }
}
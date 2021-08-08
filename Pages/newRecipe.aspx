<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newRecipe.aspx.cs" Inherits="InternshipWebsite.newRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.css" />

    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <title>New Recipe - Neslicious</title>

</head>
<body style="background-color: dimgray">
    <form id="form1" runat="server">
        <div class="page">
           <div style="background-image: url('../images/newRecipe.png'); background-repeat: no-repeat; background-position:top; height:1500px;background-color: white; border-radius: 15px;">
            
               <div class="newRecipeItems">

                   <hr style="height:4px;border-width:0;color:gray;background-color:rebeccapurple" />

                <div class="container align-content-center" style="margin-top:5%">
                    <asp:Label runat="server" CssClass="textBoxStyle">Recipe Title</asp:Label>
                    <asp:TextBox runat="server" ID="txtTitle" style="margin-bottom:2%;border-radius:8px;"></asp:TextBox>
                </div>
                   <asp:Label runat="server" CssClass="textBoxStyle">Recipe Explanation</asp:Label>
                <div class="container align-content-center">
                     <asp:TextBox runat="server" ID="txtExplanation" style="margin-bottom:5%;border-radius:8px;" TextMode="Multiline" Columns="30" Name="S1" Rows="5"></asp:TextBox>
                </div>
                <div class="container align-content-center">
                    <asp:Label runat="server" CssClass="textBoxStyle" style="border-radius:8px;">Category</asp:Label>
                    <asp:DropDownList ID="category" style="margin-bottom:5%" runat="server">
                            <asp:ListItem Value="9999">Choose Category</asp:ListItem>
                            <asp:ListItem Value="1">Breakfast</asp:ListItem>
                            <asp:ListItem Value="2">Lunch</asp:ListItem>
                            <asp:ListItem Value="3">Dinner</asp:ListItem>
                            <asp:ListItem Value="4">Dessert</asp:ListItem>
                            <asp:ListItem Value="5">Drink</asp:ListItem>
                            </asp:DropDownList>
                </div>
                <div class="container align-content-center">
                    <asp:Label runat="server" CssClass="textBoxStyle">Choose Recipe Image</asp:Label>
                    <asp:FileUpload ID="FileImgSave" style="margin-bottom:5%;border-radius:8px;background-color:rebeccapurple;color:white" runat="server" />
                </div>

                <div class="container align-content-center">
                    <asp:Button runat="server" ID="Button1" CssClass="saveBtn" style="margin-bottom:5%" OnClick="Button1_Click" Text="Save Recipe" />
        </div>
         </div>
        </div>
        </div>
    </form>
</body>
</html>

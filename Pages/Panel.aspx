<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="InternshipWebsite.Panel" %>

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

    <title>ADMIN PANEL</title>
</head>
<body style="background-color: #f5daff;">
    <form id="form1" runat="server">
        <div class="page">
            <div class="header">
                <div>
                    <img class="header-logo" src="images/panel.png" />

            </div>

                 
                   <hr style="height:4px;margin-top:40px;border-width:0;color:gray;background-color:rebeccapurple" />

            <asp:Button runat="server" style="text-align:center;background-color:purple;color:white; width:250px;margin-left:25%;margin-top:15%;margin-bottom:20%;border-radius:8px" ID="tarifEkle" OnClick="tarifEkle_Click" Text="Add New Recipe" />
            <asp:Button runat="server" style="text-align:center;background-color:purple;color:white; width:250px;margin-left:20px;margin-top:15%;margin-bottom:20%;border-radius:8px" ID="recipeDelete" OnClick="recipeDelete_Click" Text="List of Recipes" />

            </div>
</div>
    </form>
</body>
</html>

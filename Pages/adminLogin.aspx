<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="InternshipWebsite.adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.css" />

    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <title>ADMIN - LOGIN PAGE</title>
</head>
<body style="background-color: dimgray">
    <form id="form1" runat="server">
        <div style="background-image: url('../images/background.jpg'); background-repeat: no-repeat; background-position: center; height: 500px; margin: 10% 6%; background-color: currentColor; border-radius: 15px;">
            <h3 style="text-align: center; color: white; font-family: 'Century Gothic'; padding-top: 20px;">ADMIN LOGIN</h3>
            <div class="container align-content-center">
                <asp:TextBox runat="server" ID="txtName" class="labels"></asp:TextBox>
            </div>
            <div class="container align-content-center">
               <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" class="labels1"></asp:TextBox>
            </div>
            <div class="container align-content-center">
               <asp:Button OnClick="Button1_Click" runat="server" ID="Button1"  Text="Login" class="btnDesign"/>
            </div>
        </div>

    </form>
</body>
</html>

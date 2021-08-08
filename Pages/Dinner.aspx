<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dinner.aspx.cs" Inherits="InternshipWebsite.Dinner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.css" />

    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <title>Dinner - Neslicous</title>

    <style>
       .collapsible {
  background-color: rebeccapurple;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 20%;
  border: none;
  text-align: center;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: mediumpurple;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}
.row{
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    width: 100%
}
.column{
    flex:50%;
}
    </style>

</head>
<body style="background-color: #f5daff;">

    <form id="form1" runat="server">
        <div class="page">
            <div class="header">
                <div>
                    <img class="header-logo" src="images/dinner.png" />
                </div>
                <div style="margin-top: -60px; margin-left: 30%; font-family: 'Century Gothic'">
                    <a class="header-link" href="mainPage.aspx">All Posts</a>
                    <a class="header-link" href="Breakfast.aspx">Breakfast</a>
                    <a class="header-link" href="Lunch.aspx">Lunch</a>
                    <a class="header-link" href="Dinner.aspx">Dinner</a>
                    <a class="header-link" href="Dessert.aspx">Dessert</a>
                    <a class="header-link" href="Drink.aspx">Drink</a>
                </div>
                
                   <hr style="height:4px;margin-top:40px;border-width:0;color:gray;background-color:rebeccapurple" />
                <br />

                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <div class="row">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="column">
                            <ul>
                            <p style="margin-left:30px;color:rebeccapurple;font-family:'Century Gothic';font-size:20px;font-weight:500;"><%#Eval("title") %> </p>
                        
                            <asp:Image runat="server" Width="400" Height="400" style="margin-left:25px;border-radius:8px;margin-bottom:30px" ImageUrl='<%#Eval("image") %>' />
                                <li>
                                    <button type="button" style="border-radius:8px;margin-left:6%;color:white;background-color:purple;width:250px" class="collapsible">Click For Recipe</button>
                         
                                <div class="content">
                                  <p style="color:black"> <%#Eval("explanation").ToString().Replace("\n", "<br />") %> </p>
                                </div>
                                </li>
                            </ul>
                       </div>
             
                    </ItemTemplate>
                    <FooterTemplate>
                     </div>
                    </FooterTemplate>
                </asp:Repeater>




            </div>
        </div>
    </form>

</body>
</html>

<script>
    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function () {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.display === "block") {
                content.style.display = "none";
            } else {
                content.style.display = "block";
            }
        });
    }
</script>
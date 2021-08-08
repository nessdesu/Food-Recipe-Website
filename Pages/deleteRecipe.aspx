<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteRecipe.aspx.cs" Inherits="InternshipWebsite.deleteRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color: #f5daff;">
    <form id="form1" runat="server">
        <div class="container">
            
             <div class="page">
            <div class="header">
                <div>
                    <img class="header-logo" style="margin-top:10%;margin-bottom:5%" src="images/panel.png" />
                </div>

            <div style="margin-top:30px; margin-bottom:10px;">
            <asp:TextBox id="txtSearch" runat="server" onkeyup="yenile();" placeholder="Enter a Recipe Name" OnTextChanged="Search"></asp:TextBox>
            </div>
          
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnRowCommand="GridView1_Commands" >
             <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Recipe ID"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblNo" runat="server" Text='<%#Eval("Recipe ID")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Recipe Name"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:TextBox ID="txtRecipeName" runat="server" Text='<%#Eval("Recipe Name")%>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Explanation"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:TextBox Width="50pc" Height="20pc" TextMode="MultiLine"  ID="txtExplanation" runat="server" Text='<%#Eval("Explanation")%>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                 <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Category"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="Category" runat="server" Text='<%#Eval("Category")%>'>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                  <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Recipe Image"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:FileUpload ID="Image" runat="server" Text='<%#Eval("Image")%>'></asp:FileUpload>
                        </ItemTemplate>
                    </asp:TemplateField>


                 <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Update"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button UseSubmitBehavior="false"  CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' CommandName="update" runat="server" Text="Update"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:Label runat="server" Text="Delete"></asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                             <asp:Button UseSubmitBehavior="false" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' CommandName="delete" runat="server" Text="Delete"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
        </asp:GridView>
                </div>
                 </div>
   </div>    
    </form>
</body>
</html>

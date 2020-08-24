<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Login.css" rel="stylesheet" />
</head>
<body>
        <div class="loginbox">
            <img src="Images/us.jpg" alt="Alterate text" class="user" />
            <h1>Sign In</h1>
            <br />
            <br />
            <form runat="server">
                <asp:Label Text="Username" CssClass="lblemail" runat="server" />
                <br />
                <asp:Textbox ID="t1" runat="server" CssClass="txtemail" placeholder="Enter Email id"  Width="260px" Height="24px" />
                <br />
                <br />

                <asp:Label Text="Password" CssClass="lblemail" runat="server" />
                <br />
                <asp:Textbox ID="t2" runat="server" CssClass="txtpass" placeholder="Enter Passsword"  Width="260px" Height="24px" TextMode="Password" />
                <br />
                <br />

                <asp:Button Text="Sign In" CssClass="btnsubmit" runat="server" OnClick="Unnamed5_Click" />
                <asp:Label ID="new" CssClass="btnew" runat="server" ForeColor="Red" Font-Bold="False" />
                <a href="Registration.aspx"> 
                   <h3 style="color:white">New User?</h3></a>
                
                <asp:Label ID="Label1" runat="server" CssClass="lb" Font-Bold="True" Font-Size="Small" ForeColor="#99FF66" />
     
            </form>
        </div>
</body>
</html>

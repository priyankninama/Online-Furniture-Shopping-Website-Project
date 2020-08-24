<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 1290px;
            height: 421px;
        }
        .auto-style3 {
            height: 211px;
            width: 245px;
            font-size:larger;
            text-align:center;
            align-content:center;
            
              
        }
        .auto-style4 {
            width: 225px;
            height: 225px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
        }
    </style>
</head>
<body style="background-color:beige; background-size:cover";>
    <form id="form1" runat="server">
        <div class="auto-style6">
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="30px" PostBackUrl="~/Default.aspx" Text="Home Page" Width="210px" />
            <br />
                <br />
     <table style="align-items:center" class="auto-style2">
         <tr>
             <td style="align:center" class="auto-style3">
            <img src="Images/pri.jpg" ; ; alt="Alterate text" class="auto-style3" />
                 <br />    
                 Name: Ninama Priyank 
                <br /> Semester : 6
             </tr>

         </table>
            <div class="auto-style5">
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" align="center" Font-Names="Ebrima" Font-Size="30px" ForeColor="#993333" Height="50px" Text="Description: This is our .net project in which we made a online furniture shopping website using asp.net. where user can easily purchase any furniture they need in their home" Width="643px"></asp:Label>
           
            </div>
           
    </form>
</body>
</html>
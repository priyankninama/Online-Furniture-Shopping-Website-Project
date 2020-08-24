<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="Successfull" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style19 {
            height: 92px;
            background-color: #FFFF99;
        }
        .auto-style20 {
            height: 74px;
            background-color: #FFFF99;
        }
        .auto-style21 {
            height: 56px;
            width: 300px;
            background-color: #FFFF99;
        }
        .auto-style22 {
            height: 56px;
            background-color: #FFFF99;
        }
        .auto-style25 {
            height: 64px;
            background-color: #FFCC66;
        }
        .auto-style28 {
            height: 78px;
            text-align: left;
            background-color: #FFFF99;
        }
        .auto-style29 {
            background-color: #FFFFCC;
            width: 550px;
            height: 465px;
            color: #993300;
        }
        .auto-style30 {
            height: 54px;
            background-color: #FFFF99;
        }
        </style>
</head>
<body style="background-image:url(Images/Back.jpg); background-attachment:fixed; background-size:cover">
    <form id="form1" runat="server">
         <div align="center" style=" margin:0 auto;">
            <h2 style="text-decoration:underline overline; color:#5f98f3 " class="auto-style1">
               Payments 
            </h2>

             <br />
             <table style="margin-top:22px; " class="auto-style29">
                 <tr>
                     <td align="center" class="auto-style25" colspan="2">
                         <strong>
                         <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Card Details"></asp:Label>
                         </strong>
                         <br />
                     </td>
                 </tr>
                 <tr>
                     <td align="center" class="auto-style19" colspan="2">
                         <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Card Number"></asp:Label>
                         <br />
                         <asp:TextBox ID="TextBox3" placeholder="Enter Your 16 digit card number" runat="server" Width="280px" Height="28px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Card number is empty" ForeColor="#FF3300" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid card no." ForeColor="Red" ValidationExpression="^([0-9\(\)\/\+ \-16]*)$">*</asp:RegularExpressionValidator>
                         
                     </td>
                 </tr>
                 <tr>
                     <td align="center" class="auto-style20" colspan="2">
                         <asp:Label ID="Label2" runat="server" Font-Bold="True">Card Holder Name</asp:Label>
                         <br />
                         <asp:TextBox ID="TextBox1" placeholder="Enter card holder name" runat="server" Width="234px" Height="24px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Card holder name is empty" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter character only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                        
                     </td>
                 </tr>
                 <tr>
                     <td align="center" class="auto-style21">
                         <asp:Label ID="Label3" runat="server" Text="Expiry Date" Font-Bold="True"></asp:Label>
                         <br />
                         <asp:TextBox ID="TextBox4" runat="server" placeholder="MM-YYYY" Width="155px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Expiry Date is empty" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
                      </td>
                     <td align="center" class="auto-style22">
                         <asp:Label ID="Label4" runat="server" Text="CVV" Font-Bold="True"></asp:Label>
                         <br />
                         <asp:TextBox ID="TextBox5" runat="server" Placeholder="Enter 3 digit cvv number" Width="150px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="CVV is empty" ForeColor="#FF3300" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid CVV" ForeColor="Red" ValidationExpression="^([0-9\(\)\/\+ \-3]*)$">*</asp:RegularExpressionValidator>
                     
                     </td>
                 </tr>
                 <tr>
                     <td align="center" class="auto-style30" colspan="2">
                         <asp:Button ID="Button1" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Size="Medium" Height="40px" Text="Submit" Width="140px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button2" runat="server" BackColor="#FFCC99" BorderColor="#FFCC99" CausesValidation="False" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="40px" PostBackUrl="~/AddToCart.aspx" Text="Back To Cart" Width="140px" />
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style28" colspan="2">
                         <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="White" ForeColor="#FF3300" Height="67px" />
                     </td>
                 </tr>
                 </table>

             </div>
    </form>
</body>
</html>

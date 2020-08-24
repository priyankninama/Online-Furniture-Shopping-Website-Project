<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      .auto-style1 
        {
            width: 100%;
            text-align: center;
        }
        .auto-style2 {
            width: 650px;
            height: 235px;
            background-color: #FFFFCC;
            color: #000066;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
            height: 57px;
        }
        .auto-style8 {
            text-align: left;
            height: 71px;
        }
        .auto-style18 {
            width: 233px;
            text-align: left;
            height: 68px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style19 {
            height: 68px;
            text-align: center;
            width: 265px;
        }
        .auto-style20 {
            width: 233px;
            text-align: left;
            height: 65px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style21 {
            text-align: center;
            height: 65px;
            width: 265px;
        }
        .auto-style22 {
            width: 233px;
            text-align: left;
            height: 63px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style23 {
            height: 63px;
            text-align: center;
            width: 265px;
        }
        .auto-style24 {
            width: 233px;
            text-align: left;
            height: 60px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style25 {
            text-align: center;
            height: 60px;
            width: 265px;
        }
        .auto-style26 {
            width: 233px;
            text-align: left;
            height: 70px;
            font-weight: bold;
            font-size: large;
        }
        .auto-style27 {
            height: 70px;
            text-align: center;
            width: 265px;
        }
        .auto-style28 {
            font-weight: bold;
        }
        .auto-style29 {
            text-align: center;
        }
    </style>
</head>
<body style="background-image:url(Images/Back.jpg); background-attachment:fixed; background-size:cover">
    <form id="form1" runat="server">
        <div class="auto-style3">
        <div style=" margin:0 auto;">
            <h1 style="align:center; text-decoration:underline overline; background-color:antiquewhite; color:#5f98f3 " class="auto-style1">
                Admin Panel
            </h1>
        </div>            
            <div class="auto-style29">
                <asp:Label ID="Label2" align="center" runat="server" Text="Label" Font-Bold="True" Font-Names="Consolas" Font-Size="Large" ForeColor="#660066" Width="283px"></asp:Label>
           
        &nbsp;&nbsp;
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:Button ID="Button3" runat="server" BackColor="#FFCC99" CausesValidation="False" Font-Bold="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" Height="38px" OnClick="Button1_Click" OnDataBinding="Button1_Click" PostBackUrl="~/Login.aspx" Text="LOG OUT" UseSubmitBehavior="False" Width="145px" />
           
            </div>
           
            <h2 style="align:center; text-decoration:underline overline; color:firebrick " class="auto-style1">
                Add Products
            </h2>
            
        <table align="center" class="auto-style2" border="2">
            <tr>
                <td class="auto-style18">Product ID:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Product Id" Font-Bold="False" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid id" ForeColor="Red" ValidationExpression="^([0-9\(\)\/\+ \-]*)$">*</asp:RegularExpressionValidator>
                    
                    </td>
                
            </tr>
            <tr>
                <td class="auto-style26">Product Name:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter product name" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter character only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" >*</asp:RegularExpressionValidator>
                
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Product Description:</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="160px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Description" ForeColor="Red">*</asp:RequiredFieldValidator>
                    
                    </td>
            </tr>
            <tr>
                <td class="auto-style22">Product Image:</td>
                <td class="auto-style23">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="200px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Enter Product Image" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Product Price:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Product Price" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Price" ForeColor="Red" ValidationExpression="^([0-9\(\)\/\+ \-]*)$">*</asp:RegularExpressionValidator>
                
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:Button ID="Button2" runat="server" BackColor="#FF9966" Font-Bold="True" Font-Names="Century" Font-Size="Large" Height="38px" Text="Add" Width="159px" CssClass="auto-style28" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Century" Font-Size="Medium" ForeColor="#99FF33" CssClass="auto-style28"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF5050" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>

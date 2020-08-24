<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 50%;
            height: 115px;
            background-color: #CCFFFF;
        }
        .auto-style3 {
            width: 185px;
            text-align: center;
        }
        .auto-style4 {
            width: 165px;
            height: 49px;
        }
        .auto-style5 {
            width: 40%;
            height: 125px;
            color: #003300;
            background-color: #CCFFFF;
        }
        .auto-style6 {
            width: 165px;
            height: 85px;
        }
        .auto-style7 {
            height: 85px;
            width: 309px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 309px;
            height: 49px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            margin-left: 232px;
        }
        .auto-style12 {
            width: 712px;
            text-align: center;
        }
        .auto-style13 {
            color: #FF0000;
            margin-left: 378px;
            background-color: #FFFFCC;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            text-decoration: underline;
            font-size: xx-large;
        }
    </style>
</head>
<body style="background-image:url(Images/Back.jpg); background-attachment:fixed; background-size:cover";>
    <form id="form1" runat="server">
        <div class="auto-style10">
        <div  align="center" style=" margin:0 auto;">
             <h2 style="color:#5f98f3 " class="auto-style15">
                Order Details
            </h2>
        </div>
        <table style="align:center;" border="1" class="auto-style2" align="center">
            <tr>
                <td class="auto-style3"><strong>Order Id:</strong></td>
                <td class="auto-style12">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Order Date:</strong></td>
                <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="156px" ShowFooter="True" Width="888px" CssClass="auto-style11">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Sr no">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductId" HeaderText="Product Id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="pprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" Height="50px" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />
        <table border="1" class="auto-style5" align="center">
            <tr>
                <td class="auto-style6"><strong>Address</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8" Height="70px" TextMode="MultiLine" Width="320px"></asp:TextBox>             
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Address" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Moblie No.</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="315px"></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Phone no." ForeColor="Red" ValidationExpression="^([0-9\(\)\/\+ \-]*)$">* </asp:RegularExpressionValidator>
                 
                 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Phone Number" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                 
                 
                </td>
            </tr>
        </table>
            <div class="auto-style14">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style13" Width="508px" />
            </div>
        <br />

        <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Checkout" Width="135px" BackColor="#FFCC99" Font-Bold="True" Font-Size="Medium" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Names="Century" Font-Size="Medium" Height="35px" OnClick="Button2_Click1" Text="Payment" Width="135px" />
        </div>
    </form>
</body>
</html>

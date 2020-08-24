<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 47px;
        }
    </style>
</head>
<body style="background-image:url(Images/Back.jpg); background-attachment:fixed; background-size:cover">
    <form id="form1" runat="server">
        <div align="center" style=" margin:0 auto;">
            <h1 style="text-decoration:underline overline; color:blue " class="auto-style1">
                Your Shopping Cart
            </h1>
             <asp:Button ID="Button2" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Italic="False" Font-Names="Times New Roman" Font-Size="Large" Height="36px" PostBackUrl="~/Default.aspx" Text="Continue Shopping" Width="235px" />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Height="35px" OnClick="Button3_Click" Text="Clear Cart" Width="120px" />
            
            <br />

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="137px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="716px">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Ṣr No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ProductId" HeaderText="Product ID">
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
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                    <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" BorderStyle="Solid" Font-Bold="True" ForeColor="#CCCCFF" Height="50px" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>

            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Names="Calibri" Font-Size="20px" Height="45px" OnClick="Button1_Click" Text="Checkout" Width="195px" />

            </div>
    </form>
</body>
</html>

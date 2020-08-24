<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditOrder.aspx.cs" Inherits="EditOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            text-align: center;
        }
        .auto-style2 {
            width: 43%;
            height: 275px;
            color: #000000;
            background-color: #99CCFF;
        }
        .auto-style3 {
            width: 241px;
            height: 34px;
            font-size: large;
        }
        .auto-style4 {
            width: 241px;
            height: 41px;
            font-size: large;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            width: 241px;
            height: 40px;
            font-size: large;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            width: 241px;
            height: 39px;
            font-size: large;
        }
        .auto-style9 {
            height: 39px;
        }
        .auto-style10 {
            text-align: center;
            height: 61px;
            font-size: large;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body style="background-image:url(Images/Back.jpg); background-attachment:fixed; background-size:cover";>
    <form id="form1" runat="server">
        <div style=" margin:0 auto;">
            <h2 style="align:center; text-decoration:underline overline; color:#5f98f3 " class="auto-style1">
                Modify Your Shopping Cart
            </h2>
          

            <table style="align=center" border="1" class="auto-style2" align="center">
                <tr>
                    <td class="auto-style6"><strong>Sr no:</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Product ID:</strong></td>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Product Name:</strong></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Price:</strong></td>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Quantity:</strong></td>
                    </strong>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style12">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <strong>
                <tr>
                    <td class="auto-style3"><strong>Total Price:</strong></td>
                    <td class="auto-style11">
                        <strong>
                        <asp:Label ID="Label6" runat="server" Text="Label" CssClass="auto-style12"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style10">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" align="center" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="35px" OnClick="Button1_Click" Text="Save" Width="160px" CssClass="auto-style13" />
                        </strong>
                    </td>
                </tr>
            </table>
          

        </div>
    </form>
</body>
</html>
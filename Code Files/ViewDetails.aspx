<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="ViewDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 90%;
            height: 378px;
            margin-left: 0px;
            background-color: #66CCFF;
        }
        .auto-style4 {
            height: 56px;
            width: 602px;
            text-align: left;
            background-color: #99CCFF;
        }
        .auto-style5 {
            height: 99px;
            width: 602px;
            text-align: left;
            background-color: #99CCFF;
        }
        .auto-style6 {
            height: 63px;
            width: 602px;
            text-align: left;
            background-color: #99CCFF;
        }
        .auto-style7 {
            width: 95px;
            background-color: #99CCFF;
        }
        .auto-style8 {
            text-align: center;
            height: 69px;
            background-color: #66CCFF;
        }
        .auto-style9 {
            text-align: center;
            height: 65px;
            background-color: #66CCFF;
        }
        .auto-style10 {
            text-align: center;
            margin-left: 135px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body style="background-image:url(Images/Back.jpg); background-attachment:fixed; background-size:cover";>
    <form id="form1" runat="server">
        <div align="center" style=" margin:0 auto;">
            <h2 style="text-decoration:underline overline; color:#5f98f3 " class="auto-style1">
                Product Details
            </h2>

            <br />

        </div>
        <div class="auto-style10">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="auto-style10">
            <ItemTemplate>
                <br />
                <table class="auto-style2" align="center" border="1">
                    <tr>
                        <td class="auto-style9" colspan="2"><strong>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text='<%# Eval("Pname") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style7" rowspan="3">
                            <asp:Image ID="Image1" runat="server" Height="242px" ImageUrl='<%# Eval("pimage") %>' Width="272px" />
                        </td>
                        <td class="auto-style4"><h3><strong>Product ID:&nbsp; <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductId") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><h3><strong>Product Description:&nbsp; <asp:Label ID="Label3" runat="server" Text='<%# Eval("pdesc") %>' Font-Size="Medium"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><h3><strong>Price:&nbsp; <asp:Label ID="Label4" runat="server" Text='<%# Eval("pprice") %>' Font-Size="Medium"></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">
                            <asp:Button ID="Button1" runat="server" BackColor="#FFCC99" Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#003366" Height="41px" Text="Home" Width="150px" OnClick="Button1_Click"/>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Product1] WHERE ([ProductId] = @ProductId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductId" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

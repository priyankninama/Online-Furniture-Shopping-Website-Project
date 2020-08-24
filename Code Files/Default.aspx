<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-right: 258px;
        }
        .a1{
             border-radius: 22px;
        }
        .auto-style6 {
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            height: 41px;
            background-color: #99CCFF;
            width: 265px;
        }
        .auto-style10 {
            color: #000000;
        }
        .auto-style11 {
            background-color: #99CCFF;
            width: 265px;
        }
        .auto-style12 {
            width: 1186px;
        }
        .auto-style13 {
            background-color: #99CCFF;
            height: 16px;
            width: 265px;
        }
        .auto-style15 {
            height: 47px;
            background-color: #99CCFF;
            width: 265px;
        }
        .auto-style17 {
            height: 40px;
            color: #000000;
            background-color: #99CCFF;
            width: 265px;
        }
        .auto-style18 {
            color: #000000;
            background-color: #CC99FF;
        }
        .auto-style19 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    
    <table>
        <tr>
           <td style="text-align: right; background-color:beige" class="auto-style12">
               <asp:Label ID="Label1" runat="server" style="text-align:left" Font-Bold="True" CssClass="auto-style19" Font-Size="Large" ForeColor="#009900"></asp:Label>
               &nbsp;
               &nbsp;
               <asp:Button ID="Button2" runat="server" Text="Log Out" BackColor="#FFCCCC" Font-Bold="True" Font-Size="Medium" Height="35px" Width="125px" OnClick="Button2_Click1" />
           </td>
            <td style="text-align: right; background-color:beige" class="auto-style12">
                <asp:Label ID="Label4" runat="server" Text="Search" text-align=center; ForeColor="#993333" Height="35px" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Width="90px"></asp:Label>              
                 &nbsp;&nbsp;&nbsp;        
                 <asp:TextBox ID="TextBox1" runat="server" placeholder="Search" Height="25px" Width="232px" ></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="29px" ImageUrl="~/Images/download (3).jpg" OnClick="ImageButton2_Click" Width="38px" />

                &nbsp;<td style="text-align: center; background-color: beige" class="auto-style12">
                    &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl="~/Images/87.jpg" Width="38px" OnClick="ImageButton1_Click"  />
                &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" text-align=center; Height="30px" Width="27px" Font-Bold="True" Font-Size="Large" Font-Underline="True"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <br />
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"  Height="260px" Width="263px" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="auto-style6" OnItemCommand="DataList1_ItemCommand"  >
        <ItemTemplate>
            <table style="height:500px;width:275px;"border="1" class="auto-style7" >
                <tr>
                    <td class="auto-style17"><span class="auto-style10"><strong><span class="auto-style19">Product ID</span>:</strong> </span>
                        <strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text='<%# Eval("ProductId") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style10" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="Century" Font-Size="Large"></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Image ID="Image3" runat="server" CssClass="auto-style18" Height="220px" ImageUrl='<%# Eval("pimage") %>' Width="261px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong><span class="auto-style19">Price</span></strong>:<span class="auto-style10"> </span>
                        <strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("pprice") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong><span class="auto-style19">Quantity:</span> <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="35px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:ImageButton ID="ImageButton5" runat="server" CssClass="auto-style10" Height="30px" ImageUrl="~/Images/download (2).jpg" Width="160px" CommandArgument='<%# Eval("ProductId")%>' CommandName="addtocart" />
                    </td>
                </tr>                   
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" CommandArgument='<%# Eval("ProductId")%>' CommandName="viewdetails" Font-Bold="True" Font-Names="Century" Font-Size="Medium" Height="35px" Text="View Details" Width="140px" ForeColor="Black" />
                    </td>
                </tr>
            </table>
            <br />

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Product1]">

    </asp:SqlDataSource>
</asp:Content>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Registration.css" rel="stylesheet" />
    <style type="text/css">
        
        .auto-style1 {
            height: 871px;
        }
        
    </style>
</head>
<body>
             <div class="Regibox">
            <h1>Sign up</h1>
                 <p>&nbsp;</p>
    
             <form id="form1" runat="server" class="auto-style1"> 

                <asp:Label Text="First name" CssClass="lblfname" runat="server" />
                 <br />
                <asp:Textbox ID="t1" runat="server" CssClass="txtfname" placeholder="Enter First name" Width="250px" Height="24px"/>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="First name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Enter character only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" >*</asp:RegularExpressionValidator>
                
                 <br />
                <asp:Label Text="Last name" CssClass="lbllname" runat="server" />
                  <br />
                <asp:Textbox ID="t2" runat="server" CssClass="txtlname" placeholder="Enter Last name" Width="250px" Height="24px"/>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Enter character only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Last name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                 <br />
                 <asp:Label ID="Label2" runat="server" CssClass="lblemail" Font-Bold="True" ForeColor="White" Text="Photo " Width="200px"></asp:Label>
                 <br />
                 <asp:FileUpload ID="FileUpload1" CssClass="txtemail" runat="server" Height="25px" Width="250px" />
                
                 <br />
                <asp:Label Text="Email Id" CssClass="lblemail" runat="server" />
                  <br />
                <asp:Textbox ID="t3" runat="server" CssClass="txtemail" placeholder="Enter Email id" Width="250px" Height="25px" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t3" ErrorMessage="Email id is empty" ForeColor="Red" TextMode="Email">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="t3" ErrorMessage="Enter valid email id" ForeColor="Red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                  <br />
                <asp:Label Text="Gender" CssClass="lblgen" runat="server" />
                  <br />
                  <asp:DropDownList ID="D1" runat="server" placeholder="Select gender" Height="35px" Width="250px">
                      <asp:ListItem>Male</asp:ListItem>
                      <asp:ListItem>Female</asp:ListItem>
                      <asp:ListItem>Other</asp:ListItem>
                 </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="D1" ErrorMessage="Select Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <br />
                  <br />
                <asp:Label Text="Date of Birth" CssClass="lbld" runat="server" />
                  <br />
                <asp:TextBox ID="t4" runat="server" CssClass="txtdo" placeholder="Enter Date of birth(MM-DD-YYYY)" Width="250px" Height="24px" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="t4" ErrorMessage="Enter Date properly " ForeColor="Red">*</asp:RequiredFieldValidator>
                
                  <br />
                <asp:Label Text="Address" CssClass="lbladd" runat="server" />
                  <br />
                <asp:Textbox ID="t5" runat="server" CssClass="txtadd" placeholder="Enter Address" Width="250px" Height="24px" TextMode="MultiLine"/>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="t5" ErrorMessage="Address is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                 
                 <br />
                <asp:Label Text="Phone no." CssClass="lblpho" runat="server" />
                  <br />
                <asp:Textbox ID="t6" runat="server" CssClass="txtpho" placeholder="Enter Phone no." Width="250px" Height="24px" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="t6" ErrorMessage="Enter phone no." ForeColor="Red">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="t6" ErrorMessage="Invalid Phone no." ForeColor="Red" ValidationExpression="^([0-9\(\)\/\+ \-]*)$">*</asp:RegularExpressionValidator>
                 
                 <br />
                 
                 <br />
                <asp:Label Text="Password" CssClass="lblpass" runat="server" />
                  <br />
                <asp:Textbox ID="t7" runat="server" CssClass="txtpass" placeholder="Enter password" Width="250px" Height="24px"/>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="t7" ErrorMessage="Enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                  
                  <br />
                <asp:Label Text="Confirm password" CssClass="lblco" runat="server" />
                 <br />
                 <asp:Textbox ID="t8" runat="server" CssClass="txtco" placeholder="Confirm password" Width="250px" Height="24px"/>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="t8" ErrorMessage="Password is not matched" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="t7" ControlToValidate="t8" ErrorMessage="Password is not matched" ForeColor="Red">*</asp:CompareValidator>
                  
                  <br />
                <asp:Button Text="Submit" CssClass="btnsub" runat="server" OnClick="Unnamed18_Click" Height="54px" Width="176px" />
                <br /><br/>
                 <asp:Label ID="Label1" runat="server" CssClass="lb" Font-Bold="True" Font-Names="Felix Titling" Font-Size="Small" ForeColor="#99FF66"  />
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
             </form>
     </div>
</body>
</html>
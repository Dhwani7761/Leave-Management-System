<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1 {
            font-size : 60px;
            align-content:center;
            font-family : 'Lucida Handwriting';
            margin-top:50px;
            padding:0;
        }
        .button {
            background-color: #ffbf00;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
    </style>
</head>
<body style="background-image:url(Images/Background.png)">
    <form id="form1" runat="server">
    <div>
        <center>
        <h1>Leave Management System</h1>
            <asp:Label ID="namelbl" runat="server" Text="Name :" style="font-family:'Lucida Handwriting'" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="name_text" runat="server" placeholder="Enter Full Name" name="name" style="font-family:'Lucida Handwriting'" Width="500px" Height="35px" required></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="contactlbl" runat="server" Text="Contact :" style="font-family:'Lucida Handwriting'" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="contact_text" runat="server" placeholder="Enter Contact No" TextMode="Phone" Width="500px" Height="35px" style="font-family:'Lucida Handwriting'" required></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="emaillbl" runat="server" Text="E-Mail :" style="font-family:'Lucida Handwriting'" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="email_text" runat="server" placeholder="Enter Email-id" TextMode="Email" style="font-family:'Lucida Handwriting'" Width="500px" Height="35px" required></asp:TextBox>
            <br />
           
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
           
            <br />

            <asp:Label ID="passwordlbl" runat="server" Text="Password :" style="font-family:'Lucida Handwriting'" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="pwd_text" runat="server" placeholder="Enter Password" TextMode="Password" style="font-family:'Lucida Handwriting'" Width="500px" Height="35px" required></asp:TextBox>
            <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="pwd_text" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="8"></asp:PasswordStrength>
            <br />
            <br />
            <asp:Label ID="rpwdlbl" runat="server" Text="Re-Enter Password :" style="font-family:'Lucida Handwriting'" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="rpwd_text" runat="server" placeholder="Enter Re-Enter Password" TextMode="Password" style="font-family:'Lucida Handwriting'" Width="500px" Height="35px" required></asp:TextBox>
            <br />
            <br />
        <asp:Button ID="Button1" runat="server" Text="Sign Up" Font-Names="Lucida Handwriting" CssClass="button" OnClick="Button1_Click"></asp:Button>
         </center>
    </div>
    </form>
</body>
</html>

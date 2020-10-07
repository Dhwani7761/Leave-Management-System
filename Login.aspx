<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
        .signupbtn {
            width: 8%;
            padding: 14px 20px;
            margin: 8px 0;
            border:none;
            background-color: #ff0000;
        }
        .timer {

        }
    </style>
</head>
<body style="background-image:url(Images/Background.png)">
    <form id="form1" runat="server">
    <div>
        <center>
        <h1>Leave Management System</h1>
       <asp:Label ID="emaillbl" runat="server" Text="E-mail" style="font-family:'Lucida Handwriting'" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="email_text" runat="server" placeholder="Enter E-mail" TextMode="Email" style="font-family:'Lucida Handwriting'" Width="500px" Height="35px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="pwdlbl" runat="server" Text="Password :" style="font-family:'Lucida Handwriting'" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="pwd_text" runat="server" placeholder="Enter Password" TextMode="Password" style="font-family:'Lucida Handwriting'" Width="500px" Height="35px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" Font-Names="Lucida Handwriting" CssClass="button" OnClick="Button1_Click"></asp:Button>
            <br />
            <br />
            <br />
        <label style="font-family:'Lucida Handwriting'"><b>New Here ?</b></label>
        <asp:Button ID="Button2" runat="server" Text="SignUp" CssClass="signupbtn" OnClick="Button2_Click" Font-Names="Lucida Handwriting"></asp:Button>
            </center>
    </div>
    </form>
</body>
</html>

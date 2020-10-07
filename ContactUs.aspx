<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1 {
            font-size : 60px;
            font-family : 'Lucida Handwriting';
            margin:0;
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
           
             <p />
             <p />
             <p />
             <br />
             <br />
             <br />
             <br />
        <asp:Label ID="Label5" runat="server" Text="Developed By:" style="font-family:'Lucida Handwriting'" Font-Bold="false"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Dhwani Kshatriya : 27 " style="font-family:'Lucida Handwriting'" Font-Bold="false"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Kaushiki Nanavati : 36" style="font-family:'Lucida Handwriting'" Font-Bold="false"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="TyiMCA" style="font-family:'Lucida Handwriting'" Font-Bold="false"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="School of Computer Studies" style="font-family:'Lucida Handwriting'" Font-Bold="false"></asp:Label>
        <br />
             <asp:Button ID="Button1" runat="server" Text="Back" CssClass="button" style="font-family:'Lucida Handwriting'" OnClick="Button1_Click"></asp:Button>
              </center>
    </div>
    </form>
</body>
</html>

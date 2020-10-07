<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>www.leavemanagement.com</title>
</head>
    <style>
        h1 {
            font-size : 60px;
            font-family : 'Lucida Handwriting';
            margin:0;
            padding:0;
        }
        .login {
            background-color:transparent;
            border : none;
            font-size : larger;
            font-family : 'Lucida Handwriting';
            margin-top:100px;
            margin-left : 50px;
            -webkit-transition: width 2s linear 1s; /* For Safari 3.1 to 6.0 */
            transition: width 2s linear 1s;
        }
        .apply {
            background-color:transparent;
            border : none;
            font-size : large;
            font-family : 'Lucida Handwriting';
            /*margin : 12px 10px 8px 6px;*/
            margin-top : 50px;
            margin-left: 100px;
        }
        .contactus {
            background-color:transparent;
            border : none;
            font-size : large;
            font-family : 'Lucida Handwriting';
            margin-top: 50px;
            margin-left : 200px;
        }
        .viewdetails {
            background-color:transparent;
            border : none;
            font-size : large;
            font-family : 'Lucida Handwriting';
            /*margin : 12px 10px 8px 6px;*/
            margin-top : 50px;
            margin-left: 150px;
        }
        #footer {
            width:100%;
            height:80px;
            position:absolute;
            bottom:0;
            left:1150px;
        }
    </style>
    <body style="background-image:url(Images/Background.png)" >
    <form id="form1" runat="server" >
        <div>
            <center>
                <h1>Leave Management System</h1>
            </center>
            <img src="Images/LeaveManagementSystem.jpg"  align="right" style="margin-right:100px; margin-top:50px"/>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login" OnClick="Button1_Click"/>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Apply Now" CssClass="apply" OnClick="Button2_Click"/>
            <br />
            <asp:Button ID="Button4" runat="server" Text="View Details" CssClass="viewdetails" OnClick="Button4_Click" />
            <asp:Button ID="Button3" runat="server" Text="Contact Us" CssClass="contactus" OnClick="Button3_Click" />
            </div>
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <footer id="footer">
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Lucida Handwriting" Font-Bold="true" Font-Size="Medium"></asp:Label>
                 <asp:Timer ID="Timer1" runat="server" Interval =" 1000">
                     </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        </footer>
    </form> 
</body>
</html>
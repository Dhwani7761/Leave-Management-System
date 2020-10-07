<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDetailUser.aspx.cs" Inherits="ViewDetailUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style>
        h1 {
            font-size : 60px;
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
        .apply {
             background-color: #ffbf00;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .home {
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
            <br />
            <asp:Button ID="Button1" runat="server" Text="View" Font-Names="Lucida Handwriting" CssClass="button" OnClick="Button1_Click"></asp:Button>
            <asp:Button ID="Button2" runat="server" Text="Apply Now" Font-Names="Lucida Handwriting" CssClass="apply" OnClick="Button2_Click" ></asp:Button>
            <asp:Button ID="Btn_home" runat="server" Text="Back To Home" Font-Names="Lucida Handwriting" CssClass="home" OnClick="Btn_home_Click" /></asp:Button>
        </center>

    </div>
        <br />
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="225px" Width="460px">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        </center>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
    </form>
</body>
</html>
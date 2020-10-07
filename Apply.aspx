<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Apply.aspx.cs" Inherits="Apply" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
        .sickleave {
            background-color: transparent;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .studyleave {
            background-color: transparent;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .maternitypaternity {
            background-color: transparent;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .happyhours {
            background-color: transparent;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .specialleave {
            background-color: transparent;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .compassionateleave {
            background-color: transparent;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .absenceleave {
            background-color: transparent;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .sabbaticalleave {
            background-color: transparent;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        .viewdetailbutton {
            background-color: #ff0000;
            color: white;
            padding: 12px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 10%;
        }
        .submitbutton {
            background-color: #ff0000;
            color: white;
            padding: 12px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 10%;
        }
        .backtohome {
             background-color: #ff0000;
            color: white;
            padding: 12px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 10%;
        }
    </style>
    
</head>
<body style="background-image:url(Images/Background.png)">
    <form id="form1" runat="server">
    <div>
        <center>
                <h1>Leave Management System</h1>
            <asp:Label ID="Label5" runat="server" Text="E-mail :" Font-Names="Lucida Handwriting" Font-Size="Medium"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Type of Leave : " Font-Names="Lucida Handwriting" Font-Size="Medium"></asp:Label>
            <br />
            <br />
            <asp:RadioButton GroupName="group1" ID="RadioButton1" runat="server" style="font-family:'Lucida Handwriting'" Text="Sick Leave" CssClass="sickleave"></asp:RadioButton>
            <br />
            <br />
            <asp:RadioButton GroupName="group1" ID="RadioButton2" runat="server" style="font-family:'Lucida Handwriting'" Text="Study Leave" CssClass="studyleave"></asp:RadioButton>
            <br />
            <br />
            <asp:RadioButton GroupName="group1" ID="RadioButton3" runat="server" style="font-family:'Lucida Handwriting'" Text="Maternity/Paternity Leave" CssClass="maternitypaternity"></asp:RadioButton>
            <br />
            <br />
            <asp:RadioButton GroupName="group1" ID="RadioButton4" runat="server" style="font-family:'Lucida Handwriting'" Text="Happy Hours" CssClass="happyhours"></asp:RadioButton>
            <br />
            <br />
            <asp:RadioButton GroupName="group1" ID="RadioButton5" runat="server" style="font-family:'Lucida Handwriting'" Text="Special Leave" CssClass="specialleave"></asp:RadioButton>
            <br />
            <br />
            <asp:RadioButton GroupName="group1" ID="RadioButton6" runat="server" style="font-family:'Lucida Handwriting'" Text="Leave on Compassionate Grounds" CssClass="compassionateleave"></asp:RadioButton>
            <br />
            <br />
            <asp:RadioButton GroupName="group1" ID="RadioButton7" runat="server" style="font-family:'Lucida Handwriting'" Text="Absence Leave" CssClass="absenceleave"></asp:RadioButton>
            <br />
            <br />
            <asp:RadioButton GroupName="group1" ID="RadioButton8" runat="server" style="font-family:'Lucida Handwriting'" Text="Sabbatical Leave" CssClass="sabbaticalleave"></asp:RadioButton>
            <br />
            <br />
            <asp:Label ID="reasonlbl" runat="server" Text="Reason For Leave :" Font-Names="Lucida Handwriting" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="reasontxtbox" runat="server" Wrap="true" MaxLength="100" placeholder="Enter the reason " Width="500px" Height="35px" required OnTextChanged="reasontxtbox_TextChanged" Font-Names="Lucida Handwriting"></asp:TextBox>
            <br />
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            <br />
            <asp:Label ID="from" runat="server" Text="From :" Font-Names="Lucida Handwriting" Font-Bold="true" Font-Size="Medium"></asp:Label>
             <asp:TextBox ID="FromText" runat="server" Wrap="true" MaxLength="100" Font-Names="Lucida Handwriting" placeholder="Enter the Date " Width="500px" Height="35px" required></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="38px" ImageUrl="~/images.png" Width="29px" />
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy/MM/dd" PopupButtonID="ImageButton1" PopupPosition="BottomRight" TargetControlID="FromText"></asp:CalendarExtender>
            
            <br />
            <br />
            <asp:Label ID="tolbl" runat="server" Text="To :" Font-Names="Lucida Handwriting" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <asp:TextBox ID="ToText" runat="server" Wrap="true" MaxLength="100" Font-Names="Lucida Handwriting" placeholder="Enter the Date " Width="500px" Height="35px" required></asp:TextBox>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="38px" ImageUrl="~/images.png" Width="29px" />
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="yyyy/MM/dd" PopupButtonID="ImageButton2" PopupPosition="BottomRight" TargetControlID="ToText"></asp:CalendarExtender>
            <br />     
            <asp:Button ID="Button1" runat="server" Text="View Details" Font-Names="Lucida Handwriting" CssClass="viewdetailbutton" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Submit" Font-Names="Lucida Handwriting" CssClass="viewdetailbutton" OnClick="Button2_Click1" />
            <asp:Button ID="Button3" runat="server" Text="Back " Font-Names="Lucida Handwriting" CssClass="backtohome" OnClick="Button3_Click" ></asp:Button>    
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </center>
    </div>
    </form>
</body>
</html>

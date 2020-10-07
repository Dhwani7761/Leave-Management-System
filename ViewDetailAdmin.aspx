<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDetailAdmin.aspx.cs" Inherits="ViewDetailAdmin" EnableEventValidation="false" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


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
        .viewreport {
            background-color: transparent;
            border: none;
            font-size: large;
            font-family: 'Lucida Handwriting';
            margin-top: 50px;
            margin-left: 150px;
        }
        </style>
</head>
<body style="background-image:url(Images/Background.png)">
    <form id="form1" runat="server">
    <div>
       
        <center>
        <h1>Leave Management System</h1>
            </center>
        <center>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCommand="GridView2_RowCommand" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating">  
            <Columns>  
                <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Confirm" CommandName="Confirm"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField> 
                 
                <asp:TemplateField HeaderText="Email">  
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Email") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Type Of Leave">  
                    <ItemTemplate>  
                        <asp:Label ID="Label2"  runat="server" Text='<%#Eval("TypeOfLeave") %>'></asp:Label>  
                    </ItemTemplate>   
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Reason">  
                    <ItemTemplate>  
                        <asp:Label ID="Label3"  runat="server" Text='<%#Eval("Reason") %>'></asp:Label>  
                    </ItemTemplate>  
                    </asp:TemplateField>

                    <asp:TemplateField>
                    <HeaderTemplate>From Date</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4"   runat="server" Text='<%#Eval("Fromdt") %>'/>
                    </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>To Date</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5"   runat="server" Text='<%#Eval("Todt") %>'/>
                    </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField>
                    <HeaderTemplate>Status</HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6"   runat="server" Text='<%#Eval("StatusOfLeave") %>'/>
                    </ItemTemplate>
                    <EditItemTemplate>          
                       <asp:DropDownList ID="Leave_list" runat="server">
                        <asp:ListItem Text="Confirm" Value="Confirm"></asp:ListItem>
                           <asp:ListItem Text="Not available" Value="Not available"></asp:ListItem>
                           <asp:ListItem Text="Not Confirm" Value="Not Confirm"></asp:ListItem>
                            </asp:DropDownList>
                         <%--<asp:TextBox ID="leave_txt" runat="server" Text='<%#Eval("StatusOfLeave") %>'/>--%>
                    </EditItemTemplate>
                    </asp:TemplateField> 

            </Columns>  
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Button ID="Button1" runat="server" Text="Generate Report" CssClass="viewreport" OnClick="Button1_Click"></asp:Button>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server">
            </rsweb:ReportViewer>
        </center>
    </div>
    </form>
</body>
</html>
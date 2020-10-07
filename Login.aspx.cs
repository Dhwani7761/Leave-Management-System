using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        string email = email_text.Text;
        string pass = pwd_text.Text;
        if("admin@gmail.com".Equals(email) && "admin".Equals(pass))
        {
            Session["Email"] = email_text.Text;
            Response.Write(Session["Email"]);
            Server.Transfer("ViewDetailAdmin.aspx");
        }
        else{  
        try
        {  
        con.Open();  
        string qry = "select * from Signup where Email='" + email + "' and Password='" + pass + "'";  
        SqlCommand cmd = new SqlCommand(qry,con);  
        SqlDataReader sdr = cmd.ExecuteReader();  
        if(sdr.Read())  
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", "alert('Login successful')", true);
            Session["Email"] = email_text.Text;
            Response.Write(Session["Email"]);
            Server.Transfer("ViewDetailUser.aspx");
        }  
        else  
        {  
            Response.Write("Try Again!!!");
        }  
            con.Close();  
        }  
        catch(Exception ex)  
        {  
            Response.Write(ex.Message);  
        }  
    }
        
}
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
}
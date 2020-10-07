using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand cmd;
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        cmd = new SqlCommand();
        string sql = "Insert into Signup(Name,Contact,Email,Password,RPassword)";
        sql += "Values (@name , @contact ,@email,@password,@rpassword)";
        cmd.Parameters.AddWithValue("name", name_text.Text.Trim());
        cmd.Parameters.AddWithValue("contact", contact_text.Text);
        cmd.Parameters.AddWithValue("email", email_text.Text.Trim());
        cmd.Parameters.AddWithValue("password", pwd_text.Text);
        cmd.Parameters.AddWithValue("rpassword", rpwd_text.Text);
        cmd.Connection = con;
        cmd.CommandText = sql;
        con.Open();
        cmd.ExecuteNonQuery();

        ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", "alert('Registered Successfully')", true);
        Response.Redirect("Login.aspx");
        }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 8)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}
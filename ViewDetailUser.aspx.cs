using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class ViewDetailUser : System.Web.UI.Page
{
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = Session["Email"].ToString();
        //string eid = empmailtxtbox.ToString();
     //   String s = Session["Email"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlCommand cmd;
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        cmd = new SqlCommand();
        cmd.CommandText = "Select * from Apply where Email='" + Session["Email"].ToString()+ "'";
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Open();
        cmd.ExecuteNonQuery();
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Apply.aspx");
    }
    protected void Btn_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
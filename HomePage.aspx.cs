using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
       //if (Session["n"].ToString().Equals("3"))
         //  Session["n"] = "1";
       Label1.Text = DateTime.Now.ToString("HH:mm:ss");
        //.ImageUrl = "Images/" + Session["n"] + ".jpg";
       //int i = int.Parse(Session["n"].ToString());
       //Session["n"] = ++i + "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
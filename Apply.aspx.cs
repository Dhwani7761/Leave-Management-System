using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class Apply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = Session["Email"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewDetailUser.aspx");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
         SqlConnection con;
        SqlCommand cmd;
        con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        cmd = new SqlCommand();
        string sql = "Insert into Apply(Email,TypeOfLeave,Reason,Fromdt,Todt,StatusOfLeave) values(@email , @type ,@reason,@fromdt,@todt,@status)";
        //string sql = "Insert into Apply(Email,TypeOfLeave,Reason,Fromdt,Todt,StatusOfLeave) values (@email , @type ,@reason,@fromdt,@todt,@status) where Email='" + Label5.Text + "'";
        string str = "";
        if (RadioButton1.Checked)
        {
            str = "Sick Leave";
        }
        else if (RadioButton2.Checked)
        {
            str = "Study Leave";
        }
        else if (RadioButton3.Checked)
        {
            str = "Maternity/Paternity Leave";
        }
        else if (RadioButton4.Checked)
        {
            str = "Happy Hours";
        }
        else if (RadioButton5.Checked)
        {
            str = "Special Leave";
        }
        else if (RadioButton6.Checked)
        {
            str = "Leave on Compassionate Grounds";
        }
        else if (RadioButton7.Checked)
        {
            str = "Absence Leave";
        }
        else if (RadioButton8.Checked)
        {
            str = "Sabbatical Leave";
        }
        String str2 = "Not Confirmed";
        cmd.Parameters.AddWithValue("email",Label5.Text);
        cmd.Parameters.AddWithValue("type", str);
        cmd.Parameters.AddWithValue("reason", reasontxtbox.Text.Trim());
        cmd.Parameters.AddWithValue("fromdt", FromText.Text);
        cmd.Parameters.AddWithValue("todt", ToText.Text);
        cmd.Parameters.AddWithValue("status", str2);
        cmd.Connection = con;
        cmd.CommandText = sql;
        con.Open(); 
        int value = cmd.ExecuteNonQuery();
        if (value > 0) { 
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", "alert('Applied Successfully.Please Wait for Confirmation')", true); 
        } 
        else 
        { 
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", "alert('Insert failed')", true); 
        }

        string mailid = Label5.Text;
        try
        {
            Secure se = new Secure();
            SmtpClient Smtp_Server = new SmtpClient();
            MailMessage e_mail = new MailMessage();
            Smtp_Server.UseDefaultCredentials = false;

            Smtp_Server.Credentials = new NetworkCredential("dhwanikshatriya77@gmail.com", se.mypass);
            Smtp_Server.Port = 587; //   25,465,587
            Smtp_Server.EnableSsl = true;
            Smtp_Server.DeliveryMethod = SmtpDeliveryMethod.Network;
            Smtp_Server.Host = "smtp.gmail.com";
            e_mail = new MailMessage(); 
            e_mail.From = new MailAddress("dhwanikshatriya77@gmail.com");
            e_mail.To.Add(mailid);
            e_mail.Subject = "Email Sending";
            e_mail.IsBodyHtml = true;
            e_mail.Body = "Application successfully submitted";
            Smtp_Server.Send(e_mail);
            Label6.Text = "Email sent";
        }
        catch (Exception ex)
        {
            Label6.Text = ex.ToString();
        }
    }
    protected void reasontxtbox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}
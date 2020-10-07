using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class ViewDetailAdmin : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    SqlConnection con;
    SqlDataAdapter adapt;
    DataTable dt;
    Database db=new Database();
    Apply ab = new Apply();
    DataSet ds;
    SqlCommand cmd;
    void GetData()
    {
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from Apply";
        cmd.CommandType = CommandType.Text;
        adapt = new SqlDataAdapter(cmd);
        ds = new DataSet("ds_Leave"); 
        adapt.Fill(ds, "Apply");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowData();
        }
        
    }
    protected void ShowData()
    {
        dt = new DataTable();
        con = new SqlConnection(cs);
        con.Open();
        adapt = new SqlDataAdapter("Select * from  Apply", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        con.Close();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
          if (e.CommandName.Equals("Confirm"))
            {
            GridViewRow gvr = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
            int RowIndex = gvr.RowIndex;
            String Email = (((Label)(GridView2.Rows[RowIndex].Cells[1].Controls[1])).Text);
            String Status = (((DropDownList)(GridView2.Rows[RowIndex].Cells[6].Controls[1])).Text);
            con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "updateLeave";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@status", Status);
            cmd.ExecuteNonQuery();
            GridView2.EditIndex = -1;
            ShowData();
            }
        
        if (e.CommandName.Equals("Edit"))
        {
            GridViewRow gvr = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
            int rowindex = gvr.RowIndex;
            GridView2.EditIndex = rowindex;
            ShowData();
        }
        else if (e.CommandName.Equals("Cancel"))
        {
            GridView2.EditIndex = -1;
            ShowData();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(cs);
        GetData();
        //ds.WriteXml(Server.MapPath("~") + "\\App_Code\\LeaveData.xml");
        //ds.WriteXmlSchema(Server.MapPath("~") + "\\App_Code\\LeaveData.xsd");
        //////////////
        ReportViewer1.SizeToReportContent = true;
        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Leave_Report.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        DataTable dt = ds.Tables[0];
        ReportDataSource rsource = new ReportDataSource("ds_Leave", dt);
        ReportViewer1.LocalReport.DataSources.Add(rsource);
        //ReportViewer1.LocalReport.Refresh();
    }
}
    
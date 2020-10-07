using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

/// <summary>
/// Summary description for Database
/// </summary>
public class Database
{
     string connectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable dt;
        
	public Database()
	{
        con=new SqlConnection();
        cmd=new SqlCommand();
        dt=new DataTable();
        connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
	}
    public void OpenConnection()
    {
        con.ConnectionString = connectionString;
        con.Open();
        cmd.Connection = con;
    }
    public DataTable DisplayLeaves()
    {
        if (con.ConnectionString == "")
        {
            OpenConnection();
        }
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "displayLeaves";
        dr = cmd.ExecuteReader();
        dt.Load(dr);
        return dt;
    }
    public int UpdateLeave(Apply a)
    {
        if (con.ConnectionString == "")
        {
            OpenConnection();
        }
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "updateLeave";
        cmd.Parameters.Add("@email", a.Email);
        cmd.Parameters.Add("@reason", a.Reason);
        cmd.Parameters.Add("@fromdt", a.Fromdt);
        cmd.Parameters.Add("@todt", a.Todt);
        cmd.Parameters.Add("@status", a.Status);

        int x = cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        return x;

    }
}
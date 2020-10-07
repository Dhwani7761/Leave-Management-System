using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Apply
/// </summary>
public class Apply
{
    private string email;
    private string typeOfLeave;
    private string reason;
    private DateTime fromdt;
    private DateTime todt;
    private string status;
	public Apply()
	{
		
	}
    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    public string Type
    {
        get { return typeOfLeave; }
        set { typeOfLeave = value; }
    }
    public string Reason
    {
        get { return reason; }
        set { reason = value; }
    }
    public DateTime Fromdt
    {
        get { return fromdt; }
        set { fromdt = value; }
    }
    public DateTime Todt
    {
        get { return todt; }
        set { todt = value; }
    }
    public string Status
    {
        get { return status; }
        set { status = value; }
    }
}
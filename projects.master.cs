using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;


public partial class projects : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count != 0)
        {
            string sss = Session["aaa"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
        string sa = Session["aaa"].ToString();
        data();
        query = "select compname from compcreate where compname='" + sa.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        if (red.Read())
        {
            lblcompname.Text = red[0].ToString();
        }
        con.Close();
    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void lnklog_Click(object sender, EventArgs e)
    {
        Response.Redirect("empty.aspx");
    }
    protected void lnkcreateproj_Click(object sender, EventArgs e)
    {
        Response.Redirect("createproject.aspx");
    }
    protected void lnkprojsch_Click(object sender, EventArgs e)
    {
        Response.Redirect("projectschedule.aspx");
    }
    protected void lnkprojstatus_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkprojstatus.aspx");
    }
    protected void lnkprojwork_Click(object sender, EventArgs e)
    {
        Response.Redirect("workassign.aspx");
    }
    protected void lnkprojworkstatus_Click(object sender, EventArgs e)
    {
        Response.Redirect("workstatus.aspx");
    }
    protected void lnkchartview_Click(object sender, EventArgs e)
    {
        Response.Redirect("chartview.aspx");
    }
}

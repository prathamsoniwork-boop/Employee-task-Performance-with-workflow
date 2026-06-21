using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class emptyteam : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    SqlDataReader red;
    protected void Page_Load(object sender, EventArgs e)
    {
        string a;
        a = Session["team"].ToString();
        username.Text = a.ToString();
        //login details
        data();
        query = "select empname,password,empwork from empcreate where username='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        while (red.Read())
        {
            name.Text = red[0].ToString();
            password.Text = red[1].ToString();
            designation.Text = red[2].ToString();
        }
        red.Close();
        con.Close();

        //project details
        data();
        query = "select projname,modules,enddate from createproject where empnamep='" + name.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        while (red1.Read())
        {
            projectname.Text = red1[0].ToString();
            modules.Text = red1[1].ToString();
            enddate.Text = red1[2].ToString();
        }
        red1.Close();
        con.Close();
    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
}

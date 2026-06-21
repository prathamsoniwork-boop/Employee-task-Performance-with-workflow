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
public partial class emptydeveloper : System.Web.UI.Page
{
    string a;
    SqlConnection con;
    SqlCommand cmd;
    String query;
    SqlDataReader red;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["developer"].ToString();
        username.Text = a.ToString();
        //login details
        data();
        query = "select empname,password from empcreate where username='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        while (red.Read())
        {
            name.Text = red[0].ToString();
            password.Text = red[1].ToString();
            
        }
        red.Close();
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

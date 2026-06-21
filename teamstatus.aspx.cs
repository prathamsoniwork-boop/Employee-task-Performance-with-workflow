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
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class teamstatus : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    string a, b, c;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["team"].ToString();
        data();
        query = "select compname,empname from empcreate where username='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        while (red.Read())
        {
            b = red[0].ToString();
            c = red[1].ToString();

        }
        red.Close();
        con.Close();
        //select details to display
        data();
        query = "select projname from createproject where compname='" + b.ToString() + "' and empnamep='" + c.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        while (red1.Read())
        {
            projectname.Text = red1[0].ToString();
         }
        red1.Close();
        con.Close();
        //select phase details
        data();
        query = "select * from phasecomment where projname='" + projectname.Text + "'";
         cmd = new SqlCommand(query, con);
        SqlDataReader red2 = cmd.ExecuteReader();
        while (red2.Read())
        {
            fw.Text = red2[2].ToString();
            anal.Text = red2[3].ToString();
            des.Text = red2[4].ToString();
            code.Text = red2[5].ToString();
            test.Text = red2[6].ToString();
            imple.Text = red2[7].ToString();
            maint.Text = red2[8].ToString();
            per.Text = red2[9].ToString();
        }
    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
}

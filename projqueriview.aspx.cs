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

public partial class projqueriview : System.Web.UI.Page
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
    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        data();
        int qid=Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
        query = "delete from query where id='" + qid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        GridView1.DataBind();
    }
}

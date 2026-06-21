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
using System.Windows.Forms;
public partial class teamdeveloper : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    SqlDataReader red;
    string a,name,projectname1;

    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["team"].ToString();
        //selecting team leader name
        data();
        query = "select empname from empcreate where username='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        while (red.Read())
        {
            name = red[0].ToString();
            
        }
        red.Close();
        con.Close();
        //finding team leader project
        data();
        query = "select projname from createproject where empnamep='" + name.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        while (red1.Read())
        {
            projectname.Text = red1[0].ToString();
          
           
        }
        red1.Close();
        con.Close();
        //team members details
       
    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        lblprojname.Text = projectname.Text;
        lblmembername.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
        lblassignedwork.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        a = Session["team"].ToString();
        data();
        query = "select projname,memname,undertl from emppoints where projname='" + lblprojname.Text + "' and memname='" + lblmembername.Text + "' and undertl='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            MessageBox.Show("Already Added");
            Button1.Enabled = false;
        }
        else
        {
            Button1.Enabled = true;
            data();
            query = "insert into emppoints(projname,memname,undertl,emppoints,sdate,stime,pdesignation)values('" + lblprojname.Text + "','" + lblmembername.Text + "','" + a.ToString() + "'," + txtemppoints.Text + ",'" + System.DateTime.Today.ToShortDateString() + "','" + System.DateTime.Now.ToShortTimeString() + "','" + lblassignedwork.Text + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            data();
            query = "select cpoints from consolpoints where empname='" + lblmembername.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                int emppoints = Convert.ToInt32(txtemppoints.Text);
                data();
                query = "update consolpoints set cpoints=cpoints+" + emppoints + " where empname='" + lblmembername.Text + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                data();
                query = "insert into consolpoints(empname,cpoints)values('" + lblmembername.Text + "'," + txtemppoints.Text + ")";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            dr.Close();
            con.Close();
        }
        rd.Close();
        con.Close();

        txtemppoints.Text = "";
        GridView2.DataBind();
        GridView3.DataBind();
        Chart1.DataBind();
    }
}

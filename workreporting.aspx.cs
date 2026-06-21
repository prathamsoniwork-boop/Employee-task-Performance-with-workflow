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
public partial class workreporting : System.Web.UI.Page
{
    string a,b;
    SqlConnection con;
    SqlCommand cmd;
    String query;
    SqlDataReader red;
    string m2,m3,m4,m5;
    string w2, w3, w4, w5;
    string status;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["developer"].ToString();
        //selectiing employee name
        data();
        query = "select empname from empcreate where username='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        while (red.Read())
        {
            b = red[0].ToString();
        }
        red.Close();
        con.Close();
       //selecting proj name
        data();
        query = "select mem2,mem3,mem4,mem5,work2,work3,work4,work5,projname from chooseemp where (mem2='" + b.ToString() + "' or mem3='" + b.ToString() + "' or mem4='" + b.ToString() + "' or mem5='" + b.ToString() + "') and status='no'";
        cmd = new SqlCommand(query, con);
        red = cmd.ExecuteReader();
        if (red.Read())
        {
            m2 = red[0].ToString();
            m3 = red[1].ToString();
            m4 = red[2].ToString();
            m5 = red[3].ToString();
            w2 = red[4].ToString();
            w3 = red[5].ToString();
            w4 = red[6].ToString();
            w5 = red[7].ToString();
            projectname.Text = red[8].ToString();
        }
        red.Close();
        con.Close();
        if (m2 == b)
        {
            workassigned.Text = w2;
        }
        else if (m3 == b)
        {
            workassigned.Text = w3;
        }
        else if (m4 == b)
        {
            workassigned.Text = w4;
        }
        else if (m5 == b)
        {
            workassigned.Text = w5;
        }

        data();
        query = "select status from developerreport where projname='" + projectname.Text + "' and memname='" + b.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        if (red1.Read())
        {
            status = red1[0].ToString();
        }

        if (status == "completed")
        {
            Button1.Enabled = false;
            Label4.Visible = true;
        }
        else if(status=="")
        {
            Button1.Enabled = true;
            Label4.Visible = false;
        }
    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        string r;
        if(RadioButton1.Checked==true)
        {
            r = "completed";
        }
        else
        {
            r = "notcompleted";
        }
        if (status == "notcompleted")
        {
            data();
            query = "update developerreport set status='" + r.ToString() + "' where projname='" + projectname.Text + "' and memname='" + b.ToString() + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("emptydeveloper.aspx");
        }
        else
        {
            data();
            query = "insert into developerreport(projname,memname,memwork,status,comple)values('" + projectname.Text + "','" + b.ToString() + "','" + workassigned.Text + "','" + r.ToString() + "','0')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("emptydeveloper.aspx");
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton2.Checked = false;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton1.Checked = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("emptydeveloper.aspx");
    }
}

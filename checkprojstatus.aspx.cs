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

public partial class checkprojstatus : System.Web.UI.Page
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
              Label1.Text = red[0].ToString();
          }
          con.Close();

            if (!Page.IsPostBack)
            {
                fillproject();
            }

        }

    
    public void fillproject()
    {
        data();
        query = "select projectname from projschedule where compname='"+Label1.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dropstatus.DataSource = ds.Tables[0];
        dropstatus.DataTextField = "projectname";
        dropstatus.DataBind();

    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void dropstatus_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select comf,coma,comd,comc,comt,comi,comm from phasecomment where projname='" + dropstatus.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        while (red.Read())
        {
            comfield.Text = red[0].ToString();
            comanalysis.Text = red[1].ToString();
            comdesign.Text = red[2].ToString();
            comcode.Text = red[3].ToString();
            comtest.Text = red[4].ToString();
            comimplement.Text = red[5].ToString();
            commaintain.Text = red[6].ToString();
        }
        con.Close();
    }
    protected void bac_Click(object sender, EventArgs e)
    {
        Response.Redirect("emptyprojects.aspx");
    }
}

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
using System.Windows.Forms;
public partial class createproject : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    int a,b,c,d,f;
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
            fillemp();
        }
        txtdate.Text = System.DateTime.Today.ToShortDateString();
    }
    public void fillemp()
    {
        data();
        query = "select empname from empcreate where status='no' and empwork='Team Leader' and compname='" + Label1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dropempname.DataSource = ds.Tables[0];
        dropempname.DataTextField = "empname";
        dropempname.DataBind();
        
    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void btnprojsave_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into createproject(projlang,empnamep,startdate,enddate,gracedate,projname,compname,modules,codelang,backend,script,clientser)values('" + droplanguage.SelectedItem + "','" + dropempname.SelectedItem + "','" + txtdate.Text + "','" + txtedate.Value + "','" + txtsdate.Value + "','" + txtnameproj.Text + "','" + Label1.Text + "','" + txtmodules.Text + "','" + dropcode.SelectedItem + "','" + dropbackend.SelectedItem + "','" + dropscripttool.SelectedItem + "','" + dropclientserver.SelectedItem + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtsdate.Value = "";
        txtedate.Value = "";
        txtnameproj.Text = "";
        data();
        query = "update empcreate set status='yes' where empname='" + dropempname.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void btnprojcancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("emptyprojects.aspx");
    }
    protected void radioyes_CheckedChanged(object sender, EventArgs e)
    {
        radiono.Checked = false;
        txtoutsource.Visible = true;
        Label10.Visible = true;
    }
    protected void radiono_CheckedChanged(object sender, EventArgs e)
    {
        radioyes.Checked = false;
        txtoutsource.Visible = false;
        Label10.Visible = false;
    }
 
    protected void txtprojectweight_TextChanged(object sender, EventArgs e)
    {
        txtreuse.Text = "";
        txtmodules.Text = "";
        txttask.Text = "";
        //0 to 10
        if (((Convert.ToInt32(txtprojectweight.Text)) > 0) && (Convert.ToInt32(txtprojectweight.Text)) < 21)
        {
            data();
            query = "select count(empname) from empcreate where status='no' and compname='" + Label1.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader red = cmd.ExecuteReader();
            if (red.Read())
            {
                f = Convert.ToInt32(red[0].ToString());

            }
            red.Close();
            con.Close();
            if (f < 1)
            {
                MessageBox.Show("Should need 1 employee without work");
                btnprojsave.Enabled = false;
            }
            else
            {
                btnprojsave.Enabled = true;
                txtreuse.Text = "100";
                txtmodules.Text = "1";
            }

        }
        //20 to 40
       else  if (((Convert.ToInt32(txtprojectweight.Text)) > 19) && (Convert.ToInt32(txtprojectweight.Text)) < 41)
        {
            data();
            query = "select count(empname) from empcreate where status='no' and compname='" + Label1.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader red = cmd.ExecuteReader();
            if (red.Read())
            {
                d = Convert.ToInt32(red[0].ToString());

            }
            red.Close();
            con.Close();
            if (d < 2)
            {
                MessageBox.Show("Should need 2 employees without work");
                btnprojsave.Enabled = false;
            }
            else
            {
                btnprojsave.Enabled = true;
                txtreuse.Text = "70";
                txtmodules.Text = "2";
            }


        }
        //40 to 60
      else if (((Convert.ToInt32(txtprojectweight.Text)) > 39) && (Convert.ToInt32(txtprojectweight.Text)) < 61)
        {
            data();
            query = "select count(empname) from empcreate where status='no' and compname='" + Label1.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader red = cmd.ExecuteReader();
            if (red.Read())
            {
                c = Convert.ToInt32(red[0].ToString());

            }
            red.Close();
            con.Close();
            if (c < 3)
            {
                MessageBox.Show("Should need 3 employees without work");
                btnprojsave.Enabled = false;
            }
            else
            {
                btnprojsave.Enabled = true;
                txtreuse.Text = "50";
                txtmodules.Text = "3";
            }


        }

        //60 to 80
      else if (((Convert.ToInt32(txtprojectweight.Text)) > 59) && (Convert.ToInt32(txtprojectweight.Text)) < 81)
        {
            data();
            query = "select count(empname) from empcreate where status='no' and compname='" + Label1.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader red = cmd.ExecuteReader();
            if (red.Read())
            {
                b = Convert.ToInt32(red[0].ToString());

            }
            red.Close();
            con.Close();
            if (b < 4)
            {
                MessageBox.Show("Should need 4 employees without work");
                btnprojsave.Enabled = false;
            }
            else
            {
                btnprojsave.Enabled = true;
                txtreuse.Text = "30";
                txtmodules.Text = "4";
            }


        }
        else

        //80 to 100
        if (((Convert.ToInt32(txtprojectweight.Text)) >79)&&(Convert.ToInt32(txtprojectweight.Text))<101)
        {
            data();
            query = "select count(empname) from empcreate where status='no' and compname='" + Label1.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader red = cmd.ExecuteReader();
            if (red.Read())
            {
                a = Convert.ToInt32(red[0].ToString());

            }
            red.Close();
            con.Close();
            if (a < 5)
            {
                MessageBox.Show("Should need 5 employees without work");
                btnprojsave.Enabled = false;
            }
            else
            {
                btnprojsave.Enabled = true;
                txtreuse.Text = "0";
                txtmodules.Text = "5";
            }


        }
    }

    protected void btncalculate_Click(object sender, EventArgs e)
    {
        if (txtmodules.Text == "5")
        {
            txttask.Text = "25";
        }
        else if (txtmodules.Text == "4")
        {
            txttask.Text = "20";
        }
        else if (txtmodules.Text == "3")
        {
            txttask.Text = "15";
        }
        else if (txtmodules.Text == "2")
        {
            txttask.Text = "10";

        }
        else
            if (txtmodules.Text == "1")
            {
                txttask.Text = "5";
            }

    }
  
}

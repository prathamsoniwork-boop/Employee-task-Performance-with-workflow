using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Collections;
using System.Windows.Forms;
public partial class _Default : System.Web.UI.Page 
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    SqlDataReader red;
    protected void Page_Load(object sender, EventArgs e)
    {
        data();
        query = "select count(id) from compcreate";
        cmd = new SqlCommand(query, con);
        int cnt = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (cnt == 3)
        {
            lblresult.ForeColor = Color.DarkGreen;
            btncreate.Enabled = false;
            lblresult.Text = "company limit exceeded";
        }
        con.Close();
        
        
    
        ListComp.Items.Clear();

        data();
        //ArrayList comp = new ArrayList();
        query = "select compname from compcreate";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        while (red.Read())
        {
            ListComp.Items.Add(red[0].ToString());
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
    protected void btncreate_Click(object sender, EventArgs e)
    {
        data();
        query = "insert into compcreate(compname,comppass,comprpass,compadd,compwork,compphnum,compemail)values('" + txtname.Text + "','" + txtpass.Text + "','" + txtrpass.Text + "','" + txtaddress.Text + "','" + dropworkdomain.SelectedItem + "','" + txtphnum.Text + "','" + txtemail.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtname.Text = "";
        txtpass.Text = "";
        txtrpass.Text = "";
        txtaddress.Text = "";
        txtphnum.Text = "";
        txtemail.Text = "";
        MessageBox.Show("Company Created successfully");
        Response.Redirect("Default.aspx");
       
        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        data();
        query = "select compname,comppass from compcreate where compname='" + txtclog.Text.ToLower() + "' and comppass='" + txtcpass.Text.ToLower() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
                if (red.Read())
                {

                txtclog.Text=red[0].ToString();
                txtcpass.Text=red[1].ToString();
                Session["aaa"] = txtclog.Text.ToLower().ToString();
                Response.Redirect("empty.aspx");
             }
        
        
        con.Close();
        lblerr.Text = "Invalid username and password";
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton2.Checked = false;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton1.Checked = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            data();
            query = "select username,password from empcreate where username='" + txtuname.Text + "' and empwork='Team Leader'";
            cmd = new SqlCommand(query, con);
            SqlDataReader red = cmd.ExecuteReader();
            if (red.Read())
            {
                if ((txtuname.Text == red[0].ToString()) && (txtpassword.Text == red[1].ToString()))
                {
                    Session["team"] = txtuname.Text.ToString();
                   
                    Response.Redirect("emptyteam.aspx");
                }
                else
                {
                    MessageBox.Show("Invalid Teamleader Username & password");
                }
            }
            else
            {
                MessageBox.Show("Invalid Teamleader Username & password");
            }
        }
        if (RadioButton2.Checked == true)
        {
            data();
            query = "select username,password from empcreate where username='" + txtuname.Text + "' and empwork!='Team Leader'";
            cmd = new SqlCommand(query, con);
            SqlDataReader red1 = cmd.ExecuteReader();
            if (red1.Read())
            {
                if ((txtuname.Text == red1[0].ToString()) && (txtpassword.Text == red1[1].ToString()))
                {
                    Session["developer"] = txtuname.Text.ToString();
                    Response.Redirect("emptydeveloper.aspx");
                }
                else
                {
                    MessageBox.Show("Invalid Username & password");
                }
            }
            else
            {
                MessageBox.Show("Invalid Username & password");
            }
        }
    }
}


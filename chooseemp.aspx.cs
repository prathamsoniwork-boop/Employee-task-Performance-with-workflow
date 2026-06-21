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
using System.Windows.Forms;
public partial class chooseemp : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    string a, b,c;
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["team"].ToString();
        //for filling dropdownlist
        data();
        query = "select compname,empname from empcreate where username='" + a.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        while (red.Read())
        {
            b = red[0].ToString();
            c = red[1].ToString();
            TextBox1.Text = red[1].ToString();
        }
        red.Close();
        con.Close();
        if (!Page.IsPostBack)
        {
            fillemp();
        }
        //select modules to enable and disable textbox
        data();
        query = "select projname,modules from createproject where compname='" + b.ToString() + "' and empnamep='" + c.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        while (red1.Read())
        {
            projectname.Text = red1[0].ToString();
            modules.Text = red1[1].ToString();
            
        }
        red1.Close();
        con.Close();
        //check work assigned or not
        data();
        query = "select projname from chooseemp where projname='" + projectname.Text + "' and mem1='"+TextBox1.Text+"'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red2 = cmd.ExecuteReader();
        if (red2.Read())
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        if (modules.Text == "1")
        {
            RadioButton1.Enabled = true;
            TextBox1.Enabled = true;
        }
        else if (modules.Text == "2")
        {
            RadioButton1.Enabled = true;
            RadioButton2.Enabled = true;
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            DropDownList3.Enabled = true;
        }
        else if (modules.Text == "3")
        {
            RadioButton1.Enabled = true;
            RadioButton2.Enabled = true;
            RadioButton3.Enabled = true;
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            DropDownList3.Enabled = true;
            DropDownList4.Enabled = true;
            
        }
        else if (modules.Text == "4")
        {
            RadioButton1.Enabled = true;
            RadioButton2.Enabled = true;
            RadioButton3.Enabled = true;
            RadioButton4.Enabled = true;
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            DropDownList3.Enabled = true;
            DropDownList4.Enabled = true;
            DropDownList5.Enabled = true;
           
        }
        else 
        {
            RadioButton1.Enabled = true;
            RadioButton2.Enabled = true;
            RadioButton3.Enabled = true;
            RadioButton4.Enabled = true;
            RadioButton5.Enabled = true;
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
            DropDownList3.Enabled = true;
            DropDownList4.Enabled = true;
            DropDownList5.Enabled = true;
            DropDownList6.Enabled = true;
        }

    }
    public void fillemp()
    {
        data();
        query = "select empname from empcreate where status='no' and compname='" + b.ToString() + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "empname";
        DropDownList1.DataBind();

    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
        RadioButton5.Checked = false;

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton1.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
        RadioButton5.Checked = false;
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton2.Checked = false;
        RadioButton1.Checked = false;
        RadioButton4.Checked = false;
        RadioButton5.Checked = false;
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton1.Checked = false;
        RadioButton5.Checked = false;
    }
    protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
        RadioButton1.Checked = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Enabled== true)
        {
            DropDownList3.Text = DropDownList3.Items[0].Text.ToString();
        }
        if ((TextBox2.Enabled == true)&&(TextBox3.Enabled == true))
        {
           DropDownList3.Text = DropDownList3.Items[0].Text.ToString(); 
           DropDownList4.Text = DropDownList4.Items[1].Text.ToString();
        }
        if ((TextBox2.Enabled == true) && (TextBox3.Enabled == true) && (TextBox4.Enabled == true))
        {
            DropDownList3.Text = DropDownList3.Items[0].Text.ToString();
            DropDownList4.Text = DropDownList4.Items[1].Text.ToString();
            DropDownList5.Text = DropDownList5.Items[2].Text.ToString();
        }
        if ((TextBox2.Enabled == true) && (TextBox3.Enabled == true) && (TextBox4.Enabled == true) && (TextBox5.Enabled == true))
        {
            DropDownList3.Text = DropDownList3.Items[0].Text.ToString();
            DropDownList4.Text = DropDownList4.Items[1].Text.ToString();
            DropDownList5.Text = DropDownList5.Items[2].Text.ToString();
            DropDownList6.Text = DropDownList6.Items[3].Text.ToString();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            TextBox2.Text = DropDownList1.SelectedValue;
        }
        if (RadioButton3.Checked == true)
        {
            TextBox3.Text = DropDownList1.SelectedValue;
        }
        if (RadioButton4.Checked == true)
        {
            TextBox4.Text = DropDownList1.SelectedValue;
        }
        if (RadioButton5.Checked == true)
        {
            TextBox5.Text = DropDownList1.SelectedValue;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if ((TextBox2.Enabled == true) && (TextBox3.Enabled == true) && (TextBox4.Enabled == true) && (TextBox5.Enabled == true) && (TextBox1.Enabled == true))
        {
            data();
            query = "insert into chooseemp(projname,mem1,work1,mem2,work2,mem3,work3,mem4,work4,mem5,work5,modules,status)values('" + projectname.Text + "','" + TextBox1.Text + "','" + Label1.Text + "','" + TextBox2.Text + "','" + DropDownList3.SelectedItem + "','" + TextBox3.Text + "','" + DropDownList4.SelectedItem + "','" + TextBox4.Text + "','" + DropDownList5.SelectedItem + "','"+TextBox5.Text +"','"+DropDownList6.SelectedItem+"','" + modules.Text + "','no')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            //updating emp status
            data();
            query = "update empcreate set status='yes' where empname='" + TextBox2.Text + "' and empname='" + TextBox3.Text + "' and empname='" + TextBox4.Text + "' and empname='" + TextBox5.Text + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("emptyteam.aspx");

        }
        else if ((TextBox2.Enabled == true) && (TextBox3.Enabled == true) && (TextBox4.Enabled == true) && (TextBox1.Enabled == true))
        {
            data();
            query = "insert into chooseemp(projname,mem1,work1,mem2,work2,mem3,work3,mem4,work4,modules,status)values('" + projectname.Text + "','" + TextBox1.Text + "','" + Label1.Text + "','" + TextBox2.Text + "','" + DropDownList3.SelectedItem + "','" + TextBox3.Text + "','" + DropDownList4.SelectedItem + "','" + TextBox4.Text + "','" + DropDownList5.SelectedItem + "','" + modules.Text + "','no')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            //updating emp status
            data();
            query = "update empcreate set status='yes' where empname='" + TextBox2.Text + "' and empname='" + TextBox3.Text + "' and empname='" + TextBox4.Text + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("emptyteam.aspx");
        }
        else if ((TextBox2.Enabled == true) && (TextBox3.Enabled == true) && (TextBox1.Enabled == true))
        {

            data();
            query = "insert into chooseemp(projname,mem1,work1,mem2,work2,mem3,work3,modules,status)values('" + projectname.Text + "','" + TextBox1.Text + "','" + Label1.Text + "','" + TextBox2.Text + "','" + DropDownList3.SelectedItem + "','" + TextBox3.Text + "','" + DropDownList4.SelectedItem + "','" + modules.Text + "','no')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            
                //updating emp status
                data();
                query = "update empcreate set status='yes' where empname='" + TextBox2.Text + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                data();
                query = "update empcreate set status='yes' where empname='" + TextBox3.Text + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
            
            Response.Redirect("emptyteam.aspx");
        }
        else if ((TextBox2.Enabled == true) && (TextBox1.Enabled == true))
        {
            data();
            query = "insert into chooseemp(projname,mem1,work1,mem2,work2,modules,status)values('" + projectname.Text + "','" + TextBox1.Text + "','" + Label1.Text + "','" + TextBox2.Text + "','" + DropDownList3.SelectedItem + "','" + modules.Text + "','no')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            
            //updating emp status
            data();
            query = "update empcreate set status='yes' where empname='" + TextBox2.Text + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("emptyteam.aspx");
        }
        else
        {
            data();
            query = "insert into chooseemp(projname,mem1,work1,modules,status)values('" + projectname.Text + "','" + TextBox1.Text + "','" + Label1.Text + "','" + modules.Text + "','no')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("emptyteam.aspx");
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("emptyteam.aspx");
    }
}

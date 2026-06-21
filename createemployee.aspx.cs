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
using System.IO;
public partial class createemployee : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    string destdir, filename, orgfilename, Destpath;
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
    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void btnesave_Click(object sender, EventArgs e)
    {
       // string a;
        //if (radioteamleader.Checked == true)
        //{
        //    a = "Team Leader";
        //}
        //else if (radioprojleader.Checked == true)
        //{
        //    a = "Project Leader";
        //}
        //else if (radiodeveloper.Checked == true)
        //{
        //    a = "Developer";
        //}
        //else
        //{
        //    a = "Tester";
        //}
        if (userimg.PostedFile.ContentLength != 0)
        {

            if (userimg.PostedFile.ContentLength < 2064)
            {

            }
            else
            {
                destdir = Server.MapPath("./UserPhoto");
                filename = Path.GetFileName(userimg.PostedFile.FileName);
                orgfilename = filename;
                Destpath = Path.Combine(destdir, filename);
                userimg.PostedFile.SaveAs(Destpath);


            }
        }
        data();
        query = "insert into empcreate(empname,empquali,empyr,empdob,empdep,empwork,image,imgpath,empph,empemail,compname,status,username,password,projcom,recent,lang)values('" + txtename.Text + "','" + txtequali.Text + "','" + txteyr.Text + "','" + txtdate.Value + "','" + dropedep.SelectedItem + "','" + txtdesgn.Text + "','" + orgfilename + "','" + Destpath + "','" + txtephone.Text + "','" + txteemail.Text + "','" + Label1.Text + "','no','"+txtusername.Text+"','"+txtpassword.Text+"','"+TextBox1.Text +"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        txtename.Text = "";
        txtequali.Text = "";
        txteyr.Text = "";
        txtdate.Value = "";
        txtephone.Text = "";
        txteemail.Text = "";
        txtpassword.Text = "";
        txtusername.Text = "";
        TextBox3.Text = "";
        TextBox2.Text = "";
        TextBox1.Text = "";
    }
    protected void btnecancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("empty.aspx");
    }
    //protected void radioteamleader_CheckedChanged(object sender, EventArgs e)
    //{
    //    radiodeveloper.Checked = false;
    //    radioprojleader.Checked = false;
    //    radiotester.Checked = false;
    //}
    //protected void radioprojleader_CheckedChanged(object sender, EventArgs e)
    //{
    //    radioteamleader.Checked = false;
    //    radiodeveloper.Checked = false;
    //    radiotester.Checked = false;

    //}
    //protected void radiodeveloper_CheckedChanged(object sender, EventArgs e)
    //{
    //    radioteamleader.Checked = false;
    //    radioprojleader.Checked = false;
    //    radiotester.Checked = false;
    //}
    //protected void radiotester_CheckedChanged(object sender, EventArgs e)
    //{
    //    radiodeveloper.Checked = false;
    //    radioprojleader.Checked = false;
    //    radioteamleader.Checked = false;
    //}
    private int randomnumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    protected void btngenerate_Click(object sender, EventArgs e)
    {
        btnesave.Visible = true;
        btnecancel.Visible = true;

        int rnum1 = randomnumber(0, 909);
        int rnum2 = randomnumber(99, 909);
        int rnum3 = randomnumber(54, 979);
        txtusername.Text = txtename.Text + Label1.Text+ rnum1.ToString();
        txtpassword.Text = rnum2.ToString();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Others")
        {
            txtdesgn.Text = "";
        }
        else
        {
            txtdesgn.Text = DropDownList1.SelectedItem.Text.ToString();
        }
    }
   
}

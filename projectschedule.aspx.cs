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

public partial class projectschedule : System.Web.UI.Page
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
        //condi.Text = "yes";       
    }
    public void fillproject()
    {
        data();
        query = "select projname from createproject where compname='"+Label1.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dropproject.DataSource = ds.Tables[0];
        dropproject.DataTextField = "projname";
        dropproject.DataBind();

    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void dropproject_TextChanged(object sender, EventArgs e)
    {
        condi.Text = "";
        btnsave.Visible = false;
        btnupdate.Visible = false;
        data();
        query = "select projlang,startdate,enddate,empnamep,projname from createproject where projname='" + dropproject.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red = cmd.ExecuteReader();
        while (red.Read())
        {
            lbllang.Text = red[0].ToString();
            sdate.Text = red[1].ToString();
            edate.Text = red[2].ToString();
            emplo.Text = red[3].ToString();
            pn.Text = red[4].ToString();
        }
        con.Close();
        data();
        query = "select condi from projschedule where projectname='" + dropproject.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        while (red1.Read())
        {
            condi.Text = red1[0].ToString();
        }
        con.Close();
        //if (condi.Text == "no")
        ///{
           // condition();
            //condi.Text = "";
        //}
        //else
        //{
        //    condi.Text = "";
        //}
        if (condi.Text == "")
        {
            //btnupdate.Visible = false;
            field.Checked = false;
            fieldn.Checked = true;
            analysis.Checked = false;
            analysisn.Checked = true;
            design.Checked = false;
            designn.Checked = true;
            code.Checked = false;
            coden.Checked = true;
            test.Checked = false;
            testn.Checked = true;
            implement.Checked = false;
            implementn.Checked = true;
            maintain.Checked = false;
            maintainn.Checked = true;
            txtcf.Text = "notcompleted";
            txtca.Text = "notcompleted";
            txtcd.Text = "notcompleted";
            txtcc.Text = "notcompleted";
            txtct.Text = "notcompleted";
            txtci.Text = "notcompleted";
            txtcm.Text = "notcompleted";
            TextBox1.Text = "0";
            TextBox2.Text = "0";
            TextBox3.Text = "0";
            TextBox4.Text = "0";
            TextBox5.Text = "0";
            TextBox6.Text = "0";
            TextBox7.Text = "0";

            TextBox8.Text = "";
        }
        else
        {
            condition();
        }
        
    }
    public void condition()
    {
        field.Checked = false;
        fieldn.Checked = false;
        analysis.Checked = false;
        analysisn.Checked = false;
        design.Checked = false;
        designn.Checked = false;
        code.Checked = false;
        coden.Checked = false;
        test.Checked = false;
        testn.Checked = false;
        implement.Checked = false;
        implementn.Checked = false;
        maintain.Checked = false;
        maintainn.Checked = false;

        TextBox1.Text = "0";
        TextBox2.Text = "0";
        TextBox3.Text = "0";
        TextBox4.Text = "0";
        TextBox5.Text = "0";
        TextBox6.Text = "0";
        TextBox7.Text = "0";

      // btnupdate.Visible = true;
     //  btnsave.Visible = false;
        data();
        query = "select * from phasecomment where projname='" + dropproject.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red2 = cmd.ExecuteReader();
        while (red2.Read())
        {
            txtcf.Text = red2[2].ToString();
            txtca.Text = red2[3].ToString();
            txtcd.Text = red2[4].ToString();
            txtcc.Text = red2[5].ToString();
            txtct.Text = red2[6].ToString();
            txtci.Text = red2[7].ToString();
            txtcm.Text = red2[8].ToString();
          
        }
        con.Close();
        data();
        query = "select * from projschedule where projectname='" + dropproject.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red3 = cmd.ExecuteReader();
        while (red3.Read())
        {
            c1.Text = red3[2].ToString();
            c2.Text = red3[3].ToString();
            c3.Text = red3[4].ToString();
            c4.Text = red3[5].ToString();
            c5.Text = red3[6].ToString();
            c6.Text = red3[7].ToString();
            c7.Text = red3[8].ToString();
            TextBox8.Text = red3[10].ToString();
        }
        con.Close();
        if (c1.Text == "yes")
        {
            field.Checked = true;
           
        }
        else
        {
            fieldn.Checked = true;
            txtcf.Text = "not completed";
        }
        if (c2.Text == "yes")
        {
            analysis.Checked = true;
        }
        else
        {
            analysisn.Checked = true;
            txtca.Text = "not completed";
        }
        if (c3.Text == "yes")
        {
            design.Checked = true;
        }
        else
        {
            designn.Checked = true;
            txtcd.Text = "not completed";
        }
        if (c4.Text == "yes")
        {
            code.Checked = true;
        }
        else
        {
            coden.Checked = true;
            txtcc.Text="not completed";
        }
        if (c5.Text == "yes")
        {
            test.Checked = true;
        }
        else
        {
            testn.Checked = true;
            txtct.Text = "not completed";
        }
        if (c6.Text == "yes")
        {
            implement.Checked = true;
        }
        else
        {
            implementn.Checked = true;
            txtci.Text = "not completed";
        }
        if (c7.Text == "yes")
        {
            maintain.Checked = true;
           
        }
        else
        {
            maintainn.Checked = true;
            txtcm.Text = "not completed";
        }
        //condi.Text = "";
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        data();
        string fieldps = "field";
        string analysisps = "analysis";
        string designps = "design";
        string codeps = "code";
        string testps = "test";
        string implementps = "implement";
        string maintainps = "maintain";
        if (field.Checked == true)
        {
            fieldps = "yes";
        }
        else
        {
            fieldps = "no";
        }
        if (analysis.Checked == true)
        {
            analysisps = "yes";
        }
        else
        {
            analysisps = "no";
        }
        if (design.Checked == true)
        {
            designps = "yes";
        }
        else
        {
            designps = "no";
        }
        if (code.Checked == true)
        {
            codeps = "yes";
        }
        else
        {
            codeps = "no";
        }
        if (test.Checked == true)
        {
            testps = "yes";
        }
        else
        {
            testps = "no";
        }
        if (implement.Checked == true)
        {
            implementps = "yes";
        }
        else
        {
            implementps = "no";
        }
        if (maintain.Checked == true)
        {
            maintainps = "yes";
        }
        else
        {
            maintainps = "no";
        }



        query = "insert into projschedule(projectname,field,analysis,design,code,test,implement,maintain,compname,per,empname,condi)values('"+pn.Text+"','" + fieldps + "','" + analysisps + "','" + designps + "','" + codeps + "','" + testps + "','" + implementps + "','" + maintainps + "','"+Label1.Text+"','"+TextBox8.Text+"','"+emplo.Text+"','no')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        data();
        query = "insert into phasecomment(projname,comf,coma,comd,comc,comt,comi,comm,per)values('"+pn.Text+"','" + txtcf.Text + "','" + txtca.Text + "','" + txtcd.Text + "','" + txtcc.Text + "','" + txtct.Text + "','" + txtci.Text + "','" + txtcm.Text + "','"+TextBox8.Text+"')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        data();
        txtcf.Text = "";
        txtca.Text = "";
        txtcd.Text = "";
        txtcc.Text = "";
        txtct.Text = "";
        txtci.Text = "";
        txtcm.Text = "";

    }
   
    protected void field_CheckedChanged(object sender, EventArgs e)
    {
        fieldn.Checked = false;
        TextBox1.Text = "10";
        txtcf.Text = "completed";
    }
    protected void fieldn_CheckedChanged(object sender, EventArgs e)
    {
        field.Checked = false;
        txtcf.Text = "not completed";
        TextBox1.Text = "0";
    }
    protected void analysis_CheckedChanged(object sender, EventArgs e)
    {
        analysisn.Checked = false;
        TextBox2.Text = "20";
        txtca.Text = "completed";
    }
    protected void analysisn_CheckedChanged(object sender, EventArgs e)
    {
        analysis.Checked = false;
        txtca.Text = "not completed";
        TextBox2.Text = "0";
    }
    protected void design_CheckedChanged(object sender, EventArgs e)
    {
        designn.Checked = false;
        TextBox3.Text = "10";
        txtcd.Text = "completed";
    }
    protected void designn_CheckedChanged(object sender, EventArgs e)
    {
        design.Checked = false;
        txtcd.Text = "not completed";
        TextBox3.Text = "0";
    }
    protected void code_CheckedChanged(object sender, EventArgs e)
    {
        coden.Checked = false;
        TextBox4.Text = "30";
        txtcc.Text = "completed";
    }
    protected void coden_CheckedChanged(object sender, EventArgs e)
    {
        code.Checked = false;
        txtcc.Text = "not completed";
        TextBox4.Text = "0";
    }
    protected void test_CheckedChanged(object sender, EventArgs e)
    {
        testn.Checked = false;
        TextBox5.Text = "10";
        txtct.Text = "completed";
    }
    protected void testn_CheckedChanged(object sender, EventArgs e)
    {
        test.Checked = false;
        txtct.Text = "not completed";
        TextBox5.Text = "0";
    }
    protected void implement_CheckedChanged(object sender, EventArgs e)
    {
        implementn.Checked = false;
        TextBox6.Text = "10";
        txtci.Text = "completed";
    }
    protected void implementn_CheckedChanged(object sender, EventArgs e)
    {
        implement.Checked = false;
        txtci.Text = "not completed";
        TextBox6.Text = "0";
    }
    protected void maintain_CheckedChanged(object sender, EventArgs e)
    {
        maintainn.Checked = false;
        TextBox7.Text = "10";
        txtcm.Text = "completed";
    }
    protected void maintainn_CheckedChanged(object sender, EventArgs e)
    {
        maintain.Checked = false;
        txtcm.Text = "not completed";
        TextBox7.Text = "0";
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("emptyprojects.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        int num1 = int.Parse(TextBox1.Text);
        int num2 = int.Parse(TextBox2.Text);
        int num3 = int.Parse(TextBox3.Text);
        int num4 = int.Parse(TextBox4.Text);
        int num5 = int.Parse(TextBox5.Text);
        int num6 = int.Parse(TextBox6.Text);
        int num7 = int.Parse(TextBox7.Text);
        
        if (condi.Text == "no")
        {
            int num8 = int.Parse(TextBox8.Text);

           // btnupdate.Visible = true;
            int tot = num8 + num1 + num2 + num3 + num4 + num5 + num6 + num7;
            TextBox8.Text = tot.ToString();
            btnupdate.Visible = true;
            btncancel.Visible = true;
        }
        else
        {

            int tot = num1 + num2 + num3 + num4 + num5 + num6 + num7;
            TextBox8.Text = tot.ToString();
            btnsave.Visible = true;
            btncancel.Visible = true;
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        data();
        string fieldps = "field";
        string analysisps = "analysis";
        string designps = "design";
        string codeps = "code";
        string testps = "test";
        string implementps = "implement";
        string maintainps = "maintain";
        if (field.Checked == true)
        {
            fieldps = "yes";
        }
        else
        {
            fieldps = "no";
        }
        if (analysis.Checked == true)
        {
            analysisps = "yes";
        }
        else
        {
            analysisps = "no";
        }
        if (design.Checked == true)
        {
            designps = "yes";
        }
        else
        {
            designps = "no";
        }
        if (code.Checked == true)
        {
            codeps = "yes";
        }
        else
        {
            codeps = "no";
        }
        if (test.Checked == true)
        {
            testps = "yes";
        }
        else
        {
            testps = "no";
        }
        if (implement.Checked == true)
        {
            implementps = "yes";
        }
        else
        {
            implementps = "no";
        }
        if (maintain.Checked == true)
        {
            maintainps = "yes";
        }
        else
        {
            maintainps = "no";
        }
        data();
        query = "update projschedule set field='" + fieldps + "',analysis='" + analysisps + "',design='" + designps + "',code='" + codeps + "',test='" + testps + "',implement='" + implementps + "',maintain='" + maintainps + "',per='"+TextBox8.Text+"' where projectname='"+dropproject.SelectedItem+"'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "update phasecomment set comf='" + txtcf.Text + "',coma='" + txtca.Text + "',comd='" + txtcd.Text + "',comc='" + txtcc.Text + "',comt='" + txtct.Text + "',comi='" + txtci.Text + "',comm='" + txtcm.Text + "' where projname='" + dropproject.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        condi.Text = "";
    }
}

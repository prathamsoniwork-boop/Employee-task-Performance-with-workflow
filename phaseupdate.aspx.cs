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
public partial class phaseupdate : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    string a, b, c;
    string condi;
  
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
        query = "select projname,startdate,enddate,gracedate,empnamep from createproject where compname='" + b.ToString() + "' and empnamep='" + c.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        while (red1.Read())
        {
            projectname.Text = red1[0].ToString();
            startdate.Text = red1[1].ToString();
            enddate.Text = red1[2].ToString();
            gracedate.Text = red1[3].ToString();
            teamleader.Text = red1[4].ToString();
        }
        red1.Close();
        con.Close();


        //checking condition for phase update
        data();
        query = "select condi from projschedule where projectname='" + projectname.Text+ "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red2 = cmd.ExecuteReader();
        while (red2.Read())
        {
            condi = red2[0].ToString();
        }
        red2.Close();
        con.Close();
        if (chk.Text == "1")
        {
            if (condi == "no")
            {
                condition();
            }
        }

    }
    public void condition()
    {
        chk.Text = "2";
        string f1, f2, f3, f4, f5, f6, f7;
        data();
        query = "select * from projschedule where projectname='" + projectname.Text + "' and empname='" + c.ToString() + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red3 = cmd.ExecuteReader();
        while (red3.Read())
        {
            f1 = red3[2].ToString();
            if (f1 == "yes")
            {
                RadioButton1.Checked = true;
               // RadioButton2.Checked = false;
                fw.Text = "10";
            }
            else
            {
                //RadioButton1.Checked = false;
                RadioButton2.Checked = true;
            }
            f2 = red3[3].ToString();
            if (f2 == "yes")
            {
               // RadioButton4.Checked = false;
                RadioButton3.Checked = true;
                ana.Text = "20";
            }
            else
            {
                RadioButton4.Checked = true;
               // RadioButton3.Checked = false;
            }
            f3 = red3[4].ToString();
            if (f3 == "yes")
            {
                RadioButton5.Checked = true;
                dn.Text = "10";
               // RadioButton6.Checked = false;
            }
            else
            {
                RadioButton6.Checked = true;
               // RadioButton5.Checked = false;
            }
            f4 = red3[5].ToString();
            if (f4 == "yes")
            {
                RadioButton7.Checked = true;
                cd.Text = "30";
              //  RadioButton8.Checked = false;
            }
            else
            {
                RadioButton8.Checked = true;
               // RadioButton7.Checked = false;
            }
            f5 = red3[6].ToString();
            if (f5 == "yes")
            {
                RadioButton9.Checked = true;
                tes.Text = "10";
               // RadioButton10.Checked = false;
            }
            else
            {
                RadioButton10.Checked = true;
               // RadioButton9.Checked = false;
            }
            f6 = red3[7].ToString();
            if (f6 == "yes")
            {
                RadioButton11.Checked = true;
                impt.Text = "10";
                //RadioButton12.Checked = false;
            }
            else
            {
                RadioButton12.Checked = true;
                //RadioButton11.Checked = false;
            }
            f7 = red3[8].ToString();
            if (f7 == "yes")
            {
                RadioButton13.Checked = true;
                mtn.Text = "10";
                //RadioButton14.Checked = false;
            }
            else
            {
                RadioButton14.Checked = true;
                //RadioButton13.Checked = false;
            }
            tota.Text = red3[10].ToString();
        }

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
        fw.Text = "10";
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton1.Checked = false;
        fw.Text = "0";
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton4.Checked = false;
        ana.Text = "20";
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton3.Checked = false;
        ana.Text = "0";
    }
    protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton6.Checked = false;
        dn.Text = "10";
    }
    protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton5.Checked = false;
        dn.Text = "0";
    }
    protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton8.Checked = false;
        cd.Text = "30";
    }
    protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton7.Checked = false;
        cd.Text = "0";
    }
    protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton10.Checked = false;
        tes.Text = "10";
    }
    protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton9.Checked = false;
        tes.Text = "0";
    }

    protected void RadioButton11_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton12.Checked = false;
        impt.Text = "10";
    }
    protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton11.Checked = false;
        impt.Text = "0";
    }
    protected void RadioButton13_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton14.Checked = false;
        mtn.Text = "10";
    }
    protected void RadioButton14_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton13.Checked = false;
        mtn.Text = "0";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        tota.Text = "0";
        int num1 = int.Parse(fw.Text);
        int num2 = int.Parse(ana.Text);
        int num3 = int.Parse(dn.Text);
        int num4 = int.Parse(cd.Text);
        int num5 = int.Parse(tes.Text);
        int num6 = int.Parse(impt.Text);
        int num7 = int.Parse(mtn.Text);
        int num8 = int.Parse(tota.Text);
        if (condi== "no")
        {
            
           // btnupdate.Visible = true;
            int tot = num8 + num1 + num2 + num3 + num4 + num5 + num6 + num7;
            tota.Text= tot.ToString();
            btnupdate.Visible = true;
            btncancel.Visible = true;
        }
        else
        {

            int tot = num1 + num2 + num3 + num4 + num5 + num6 + num7;
            tota.Text = tot.ToString();
            btnsave.Visible = true;
            btncancel.Visible = true;
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string fwork,analysis,design,code,testing,imple,main;
        string pcf, pca, pcd, pcc, pct, pci, pcm;
        if (RadioButton1.Checked == true)
        {
            fwork = "yes";
            pcf = "completed";
        }
        else
        {
            fwork = "no";
            pcf = "not completed";
        }
        if (RadioButton3.Checked == true)
        {
            analysis = "yes";
            pca = "completed";
        }
        else
        {
            analysis = "no";
            pca = "not completed";
        }
        if (RadioButton5.Checked == true)
        {
            design = "yes";
            pcd = "completed";
        }
        else
        {
            design = "no";
            pcd = "not completed";
        }
        if (RadioButton7.Checked == true)
        {
            code = "yes";
            pcc = "completed";
        }
        else
        {
            code = "no";
            pcc = "not completed";
        }
        if (RadioButton9.Checked == true)
        {
            testing = "yes";
            pct = "completed";
        }
        else
        {
            testing = "no";
            pct = "not completed";
        }
        if (RadioButton11.Checked == true)
        {
            imple = "yes";
            pci = "completed";
        }
        else
        {
            imple = "no";
            pci = "not completed";
        }
        if (RadioButton13.Checked == true)
        {
            main = "yes";
            pcm = "completed";
        }
        else
        {
            main = "no";
            pcm = "not completed";
        }
        //projschedule table code
        data();
        query = "insert into projschedule(projectname,field,analysis,design,code,test,implement,maintain,compname,per,empname,condi)values('" + projectname.Text + "','" + fwork.ToString() + "','" + analysis.ToString() + "','" + design.ToString() + "','" + code.ToString() + "','" + testing.ToString() + "','" + imple.ToString() + "','" + main.ToString() + "','" + b.ToString() + "','" + tota.Text + "','" + c.ToString() + "','no')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        //phase comment table code
        data();
        query = "insert into phasecomment(projname,comf,coma,comd,comc,comt,comi,comm,per)values('" + projectname.Text + "','" + pcf.ToString() + "','" + pca.ToString() + "','" + pcd.ToString() + "','" + pcc.ToString() + "','" + pct.ToString() + "','" + pci.ToString() + "','" + pcm.ToString() + "','" + tota.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("phaseupdate.aspx");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        data();
        string fwork, analysis, design, code, testing, imple, main;
        string pcf, pca, pcd, pcc, pct, pci, pcm;
        if (RadioButton1.Checked == true)
        {
            fwork = "yes";
            pcf = "completed";
        }
        else
        {
            fwork = "no";
            pcf = "not completed";
        }
        if (RadioButton3.Checked == true)
        {
            analysis = "yes";
            pca = "completed";
        }
        else
        {
            analysis = "no";
            pca = "not completed";
        }
        if (RadioButton5.Checked == true)
        {
            design = "yes";
            pcd = "completed";
        }
        else
        {
            design = "no";
            pcd = "not completed";
        }
        if (RadioButton7.Checked == true)
        {
            code = "yes";
            pcc = "completed";
        }
        else
        {
            code = "no";
            pcc = "not completed";
        }
        if (RadioButton9.Checked == true)
        {
            testing = "yes";
            pct = "completed";
        }
        else
        {
            testing = "no";
            pct = "not completed";
        }
        if (RadioButton11.Checked == true)
        {
            imple = "yes";
            pci = "completed";
        }
        else
        {
            imple = "no";
            pci = "not completed";
        }
        if (RadioButton13.Checked == true)
        {
            main = "yes";
            pcm = "completed";
        }
        else
        {
            main = "no";
            pcm = "not completed";
        }
        //updating project schedule
        data();
        query = "update projschedule set field='" + fwork.ToString() + "',analysis='" + analysis.ToString() + "',design='" + design.ToString() + "',code='" + code.ToString() + "',test='" + testing.ToString() + "',implement='" + imple.ToString() + "',maintain='" + main.ToString() + "',per='" + tota.Text + "' where projectname='" + projectname.Text + "' and compname='" + b.ToString() + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        //updating phases
        data();
        query = "update phasecomment set comf='" + pcf.ToString() + "',coma='" + pca.ToString() + "',comd='" + pcd.ToString() + "',comc='" + pcc.ToString() + "',comt='" + pct.ToString() + "',comi='" + pci.ToString() + "',comm='" + pcm.ToString() + "',per='" + tota.Text + "' where projname='" + projectname.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("emptyteam.aspx");

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {

    }
}

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


public partial class workstatus : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String query;
    int mod;
    ArrayList arr = new ArrayList();
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
        query = "select projectname from projschedule where compname='" + Label1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dropproj.DataSource = ds.Tables[0];
        dropproj.DataTextField = "projectname";
        dropproj.DataBind();

    }
    public void data()
    {
        String connstring;
        connstring = WebConfigurationManager.ConnectionStrings["emp"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }



    protected void dropproj_TextChanged(object sender, EventArgs e)
    {
        Button1.Visible = false;
        Button2.Visible = false;
        data();
        query = "select per,empname from projschedule where projectname='" + dropproj.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        while (red1.Read())
        {
            txtstatus.Text = red1[0].ToString();
            txtprojname.Text = red1[1].ToString();
        }
        con.Close();
        if (txtstatus.Text == "100")
        {
           
            Button2.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button2.Visible = false;
        data();
        query = "delete from createproject where empnamep='" + txtprojname.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "delete from phasecomment where projname='" + dropproj.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "delete from projschedule where projectname='" + dropproj.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        data();
        query = "update empcreate set status='no' where empname='" + txtprojname.Text + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Ready for doing project");
        Button1.Visible = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtstatus.Text == "100")
        {


            data();
            query = "select modules from createproject where projname='" + dropproj.SelectedItem + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                mod = Convert.ToInt32(rd[0].ToString());
            }
            rd.Close();
            con.Close();


            //if (mod == 5)
            //{
            data();
            query = "select mem1,mem2,mem3,mem4,mem5 from chooseemp where projname='" + dropproj.SelectedItem + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                arr.Add(dr[0].ToString());
                arr.Add(dr[1].ToString());
                arr.Add(dr[2].ToString());
                arr.Add(dr[3].ToString());
                arr.Add(dr[4].ToString());
            }
            dr.Close();
            con.Close();
            int cnt = arr.Count;
            for (int i = 0; i < cnt; i++)
            {
                if (arr[i] == " ")
                {

                }
                else
                {
                    data();
                    query = "update empcreate set status='no' where empname='" + arr[i].ToString() + "'";
                    cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            data();
            query = "update chooseemp set status='yes' where projname='" + dropproj.SelectedItem + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            MessageBox.Show("project completed");
        }

       
    }
    protected void dropproj_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button1.Visible = false;
        Button2.Visible = false;
        data();
        query = "select per,empname from projschedule where projectname='" + dropproj.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader red1 = cmd.ExecuteReader();
        while (red1.Read())
        {
            txtstatus.Text = red1[0].ToString();
            txtprojname.Text = red1[1].ToString();
        }
        con.Close();
        if (txtstatus.Text == "100")
        {

            Button2.Visible = true;
        }
    }
}

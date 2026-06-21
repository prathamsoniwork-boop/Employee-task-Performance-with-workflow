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


public partial class employeeinfo : System.Web.UI.Page
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
        if (!Page.IsPostBack)
        {
            empinfo.DataBind();
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
    protected void btninfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("empty.aspx");
    }
    protected void empinfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        empinfo.EditIndex = -1;
    }
    protected void empinfo_RowEditing(object sender, GridViewEditEventArgs e)
    {
        empinfo.EditIndex = e.NewEditIndex;
    }
    protected void empinfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtepname = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpname");
        TextBox txtepquali = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpquali");
        TextBox txtepyr = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpyr");
        TextBox txtepdob = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpdob");
        TextBox txtepdep = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpdep");
        TextBox txtepwork = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpwork");
        TextBox txtepph = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpph");
        TextBox txtepemail = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpemail");
        int epid = Convert.ToInt32(empinfo.DataKeys[e.RowIndex].Values[0].ToString());
        data();
        query = "update empcreate set empname='" + txtepname.Text + "',empquali='" + txtepquali.Text + "',empyr='" + txtepyr.Text + "',empdob='" + txtepdob.Text + "',empdep='" + txtepdep.Text + "',empwork='" + txtepwork.Text + "',empph='" + txtepph.Text + "',empemail='" + txtepemail.Text + "' where id='" + epid + "'";
        SqlDataSource1.UpdateCommand = query;
        SqlDataSource1.Update();
        empinfo.DataBind();
    }
    protected void empinfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        TextBox txtepname = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpname");
        TextBox txtepquali = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpquali");
        TextBox txtepyr = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpyr");
        TextBox txtepdob = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpdob");
        TextBox txtepdep = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpdep");
        TextBox txtepwork = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpwork");
        TextBox txtepph = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpph");
        TextBox txtepemail = (TextBox)empinfo.Rows[e.RowIndex].FindControl("txtpemail");
        int epid = Convert.ToInt32(empinfo.DataKeys[e.RowIndex].Values[0].ToString());
        data();
        query = "delete from empcreate where id='" + epid + "'";
        SqlDataSource1.DeleteCommand = query;
        SqlDataSource1.Delete();
        empinfo.DataBind();
    }
}

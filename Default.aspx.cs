using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Construction;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "Select Pass from Admin where ID='"+id.Text+"'";
        con.Open();
        SqlCommand cmd=new SqlCommand(s,con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string pas=dr[0].ToString();
            if (pass.Text == pas)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Login Sucessful');", true);
                Session["fname"] = "admin";
                Response.Redirect("Rate.aspx");
                
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong Password');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong ID');", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
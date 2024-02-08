using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Rate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Construction;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("Select * from Rate", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            CC.Text = dr[0].ToString();
            Lab.Text = dr[1].ToString();
            Steel.Text = dr[2].ToString();
            Brick.Text = dr[3].ToString();
            con.Close();
        }
    }

    public string check()
    {
        if (Lab.Text == "")
        {
            return "Labour";
        }
        else if (CC.Text == "")
        {
            return "Cement";
        }
        else if (Steel.Text == "")
        {
            return "Steel";
        }
        else if (Brick.Text == "")
        {
            return "Brick";
        }
        else
        {
            return "Yes";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string c = check();
        if (c == "Yes")
        {
            SqlCommand cmd = new SqlCommand("Update Rate Set Cem='" + CC.Text + "',Labour='" + Lab.Text + "',Steel='" + Steel.Text + "',Brick='" + Brick.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Rates Updated Successfully');", true);
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter Rate For "+c+"');", true);
        }
    }
}
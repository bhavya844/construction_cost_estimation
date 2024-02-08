using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;
using System.Data;

public partial class Create : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Construction;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (PName.Text != "")
        {
            Panel4.Visible = false;
            Panel5.Visible = true;
            Panel6.Visible = false;
            Panel7.Visible = false;
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter Project Name');", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList2.Text == "--Select--" || DropDownList6.Text == "--Select--" || DropDownList10.Text == "--Select--" || DropDownList3.Text == "--Select--")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter Proper Inputs');", true);
        }
        else
        {
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = true;
            Panel7.Visible = false;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (DropDownList4.Text == "--Select--" || DropDownList7.Text == "--Select--" || DropDownList8.Text == "--Select--")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter Proper Inputs');", true);
        }
        else
        {
            Label1.Text = "";
            int NoB = 1, NoF = 0, NoR=0, NoP = 0, NoL = 0, Floor = 0, liftP = 0, CemP = 0, LabP = 0, SteelP = 0, BrickP = 0;
            string FType = "", SType = "", GType = "", LType = "";

            //NoB = Convert.ToInt32(DropDownList1.Text);
            //NoF = Convert.ToInt32(DropDownList2.Text);
            NoP = Convert.ToInt32(DropDownList6.Text);
            if (DropDownList8.Text != "No")
                NoL = Convert.ToInt32(DropDownList8.Text);

            if (DropDownList10.Text != "--Select--")
                if (DropDownList10.Text == "4")
                    NoR = 4;
                else
                    NoR = 6;


            FType = DropDownList3.Text;
            SType = DropDownList4.Text;
            GType = DropDownList7.Text;
            LType = DropDownList9.Text;

            if (LType == "6 Per")
            {
                liftP = 275000;
            }
            else if (LType == "8 Per")
            {
                liftP = 350000;
            }
            else if (LType == "10 Per")
            {
                liftP = 420000;
            }


            if (DropDownList2.Text == ">10")
            {
                NoF = 8;
                labour.Text = "60";
                Floor = NoF - NoP;
                Days.Text = "1 Year";
            }
            else if (DropDownList2.Text == "<10")
            {
                NoF = 11;
                labour.Text = "100";
                Floor = NoF - NoP;
                Days.Text = "1 Year";
            }
            else if (DropDownList2.Text == "<20")
            {
                NoF = 21;
                labour.Text = "150";
                Floor = NoF - NoP;
                Days.Text = "1 Year And 6 Months";
            }
            else if (DropDownList2.Text == "<30")
            {
                NoF = 31;
                labour.Text = "200";
                Floor = NoF - NoP;
                Days.Text = "2 Year";
            }
            else if (DropDownList2.Text == "<40")
            {
                NoF = 41;
                labour.Text = "250";
                Floor = NoF - NoP;
                Days.Text = "2 Year 6 Months";
            }


            SqlCommand cmd = new SqlCommand("Select * from Rate ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            CemP = Convert.ToInt32(dr[0].ToString());
            LabP = Convert.ToInt32(dr[1].ToString());
            SteelP = Convert.ToInt32(dr[2].ToString());
            BrickP = Convert.ToInt32(dr[3].ToString());
            Label31.Text = LabP.ToString();
            con.Close();
            if (DropDownList3.Text == "1BHK")
            {
                cement.Text = (7 * NoF).ToString();
                CCost.Text = (7 * NoF * CemP).ToString();
                steel.Text = (3 * NoF).ToString();
                SCost.Text = (3 * NoF * SteelP).ToString();
                bricks.Text = (2000 * NoF).ToString();
                BCost.Text = (2000 * NoF * BrickP).ToString();
            }
            else if (DropDownList3.Text == "2BHK")
            {
                cement.Text = (11 * NoF).ToString();
                CCost.Text = (11 * NoF * CemP).ToString();
                steel.Text = (5 * NoF).ToString();
                SCost.Text = (5 * NoF * SteelP).ToString();
                bricks.Text = (3000 * NoF).ToString();
                BCost.Text = (3000 * NoF * BrickP).ToString();
            }
            else if (DropDownList3.Text == "3BHK")
            {
                cement.Text = (14 * NoF).ToString();
                CCost.Text = (14 * NoF * CemP).ToString();
                steel.Text = (8 * NoF).ToString();
                SCost.Text = (8 * NoF * SteelP).ToString();
                bricks.Text = (4000 * NoF).ToString();
                BCost.Text = (4000 * NoF * BrickP).ToString();
            }


            if (DropDownList4.Text != "No")
            {
                if (DropDownList4.Text == "Small")
                {
                    Pool.Text = "900000";
                }
                else if (DropDownList4.Text == "Medium")
                {
                    Pool.Text = "1300000";
                }
                else if (DropDownList4.Text == "Large")
                {
                    Pool.Text = "1900000";
                }
            }
            else
            {
                Pool.Text = "0";
            }

            if (DropDownList7.Text != "No")
            {
                if (DropDownList7.Text == "Small")
                {
                    Gym.Text = "150000";
                }
                else if (DropDownList7.Text == "Medium")
                {
                    Gym.Text = "200000";
                }
                else if (DropDownList7.Text == "Large")
                {
                    Gym.Text = "300000";
                }
            }
            else
            {
                Gym.Text = "0";
            }

            if (DropDownList8.Text == "No")
            {
                Lift.Text = "0";
            }
            else
            {
                if (DropDownList8.Text == "1")
                {

                    Lift.Text = (liftP * 1).ToString();
                }
                else if (DropDownList8.Text == "2")
                {
                    Lift.Text = (liftP * 2).ToString();
                }
                else if (DropDownList8.Text == "3")
                {
                    Lift.Text = (liftP * 3).ToString();
                }
                else if (DropDownList8.Text == "4")
                {
                    Lift.Text = (liftP * 4).ToString();
                }
            }

            {
                int lab, mac, tlt, gym, smi, lift, cem, steel, brick;

                lab = Convert.ToInt32(labour.Text) * Convert.ToInt32(Label31.Text);

                gym = Convert.ToInt32(Gym.Text);
                smi = Convert.ToInt32(Pool.Text);
                lift = Convert.ToInt32(Lift.Text);
                cem = Convert.ToInt32(CCost.Text);
                steel = Convert.ToInt32(SCost.Text);
                brick = Convert.ToInt32(BCost.Text);
                tlt = ((gym + smi + lift + cem + steel + lab + brick) * NoB);
                mac = tlt / 10;
                
                machine.Text = mac.ToString();
                
                string days = Days.Text;
                int day = 0;

                if (days == "1 Year")
                {
                    day = 365;
                }
                else if (days == "1 Year And 6 Months")
                {
                    day = 545;
                }
                else if (days == "2 Year")
                {
                    day = 730;
                }
                else if (days == "2 Year 6 Months")
                { 
                    day=910;
                }



                if (NoR.ToString() == "6")
                {
                    Days0.Text = Days.Text;
                    FLab.Text =(day*(Convert.ToInt32(labour.Text) * Convert.ToInt32(Label31.Text))).ToString();
                    int fLab = Convert.ToInt32(FLab.Text);
                    fLab = ((fLab * 15) / 10);
                    FLab.Text = fLab.ToString();
                    FRaw.Text = (((cem + steel + brick)*15)/10).ToString();
                    FAdd.Text = (((gym + smi + lift)*15)/10).ToString();
                    FMac.Text = (mac*1.5).ToString();

                    tlt = (Convert.ToInt32(FLab.Text) + Convert.ToInt32(FRaw.Text) + Convert.ToInt32(FAdd.Text) + Convert.ToInt32(FMac.Text));

                    Label59.Text = tlt.ToString();
                    Label55.Text = tlt.ToString();
                }
                else
                {
                    Days0.Text = Days.Text;
                    FLab.Text = (day*(Convert.ToInt32(labour.Text) * Convert.ToInt32(Label31.Text))).ToString();
                    FRaw.Text = (cem + steel + brick).ToString();
                    FAdd.Text = (gym + smi + lift).ToString();
                    FMac.Text = mac.ToString();
                    tlt = (Convert.ToInt32(FLab.Text) + Convert.ToInt32(FRaw.Text) + Convert.ToInt32(FAdd.Text) + Convert.ToInt32(FMac.Text));
                    Label59.Text = tlt.ToString();
                    Label55.Text = tlt.ToString();
                }

                string com = "select top 1 ID From Log ORDER BY ID Desc;";
                if (con.State == ConnectionState.Closed)
                con.Open();
                cmd = new SqlCommand(com, con);
                object count = cmd.ExecuteScalar();
                if (count != null)
                {
                    int i = Convert.ToInt32(count);
                    i++;
                    Label70.Text = i.ToString();
                }
                else
                {
                    Label70.Text = "1001";
                }
                con.Close();



                cmd = new SqlCommand("Insert Into Log(ID,PName,LCost,RCost,Amenities,MCost,Days,Total) Values('" + Label70.Text + "','" + PName.Text + "','" + FLab.Text + "','" + FRaw.Text + "','" + FAdd.Text + "',"+FMac.Text+",'" + Days.Text + "','" +tlt+ "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }




            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = true;
            Panel8.Visible = true;
            Panel9.Visible = false;
            Panel12.Visible = false;
            Panel13.Visible = false;
            Panel14.Visible = false;
            Panel15.Visible = false;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel9.Visible = true;
        Panel8.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel15.Visible = false;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel13.Visible = true;
        Panel9.Visible = false;
        Panel12.Visible = false;
        Panel8.Visible = false;
        Panel14.Visible = false;
        Panel15.Visible = false;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel12.Visible = true;
        Panel9.Visible = false;
        Panel8.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel15.Visible = false;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel14.Visible = true;
        Panel9.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel8.Visible = false;
        Panel15.Visible = false;
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel15.Visible = true;
        Panel9.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel8.Visible = false;
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Button11.Visible = false;
        Button13.Visible = true;

        HttpContext.Current.Response.Clear();
        HttpContext.Current.Response.Charset = "";

        HttpContext.Current.Response.ContentType = "application/msword";

        string strFileName = PName.Text + ".doc";
        HttpContext.Current.Response.AddHeader("Content-Disposition", "inline;filename=" + strFileName);

        StringBuilder strHTMLContent = new StringBuilder();

        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append("<u>Cost Estimation Report For " + PName.Text + "</u>".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("<div align='center'>".ToString());
        strHTMLContent.Append("<table border='1' cellspacing='0' cellpadding='0' width='351'>".ToString());
        strHTMLContent.Append("<tbody>".ToString());
        strHTMLContent.Append("<tr>".ToString());
        strHTMLContent.Append("<td width='262' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append("<strong>Particular</strong>".ToString());
        strHTMLContent.Append(" </p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("<td width='89' valign='top'>".ToString());
        strHTMLContent.Append(" <p align='center'>".ToString());
        strHTMLContent.Append("<strong>Rs.</strong>".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("</tr>".ToString());
        strHTMLContent.Append("<tr>".ToString());
        strHTMLContent.Append("<td width='262' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append(" Labour(" + labour.Text + ")".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("<td width='89' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append(FLab.Text.ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("</tr>".ToString());
        strHTMLContent.Append("<tr>".ToString());
        strHTMLContent.Append("<td width='262' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append("Raw Material".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("<td width='89' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append(FRaw.Text);
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("</tr>".ToString());
        strHTMLContent.Append("<tr>".ToString());
        strHTMLContent.Append("<td width='262' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append("Add Ons".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("<td width='89' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append(FAdd.Text);
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("</tr>".ToString());
        strHTMLContent.Append("<tr>".ToString());
        strHTMLContent.Append("<td width='262' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append("Machinery".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("<td width='89' valign='top'>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append(FMac.Text);
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("</tr>".ToString());
        strHTMLContent.Append("<tr>".ToString());
        strHTMLContent.Append("<td width='262' valign='top'>".ToString());
        strHTMLContent.Append("<p align='right'>".ToString());
        strHTMLContent.Append("<strong>TOTAL</strong>".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("<td width='89' valign='top'>".ToString());
        strHTMLContent.Append("<p align='right'>".ToString());
        strHTMLContent.Append("<strong>" + Label59.Text + "</strong>".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("</td>".ToString());
        strHTMLContent.Append("</tr>".ToString());
        strHTMLContent.Append("</tbody>".ToString());
        strHTMLContent.Append("</table>".ToString());
        strHTMLContent.Append("</div>".ToString());
        strHTMLContent.Append("<p align='center'>".ToString());
        strHTMLContent.Append("To complete this project you will need " + Label59.Text + " and " + labour.Text + "".ToString());
        strHTMLContent.Append("</p>".ToString());
        strHTMLContent.Append("<p>".ToString());
        strHTMLContent.Append("**Above Given Estimation is Just an approx value, Original Value May Differ.".ToString());
        strHTMLContent.Append("</p>".ToString());

        HttpContext.Current.Response.Write(strHTMLContent);
        HttpContext.Current.Response.End();
        HttpContext.Current.Response.Flush();
        
        
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("voramish7018@gmail.com");
            mail.To.Add(Mail.Text);
            mail.Subject = "Project Cost Estimation";
            mail.Body = "Here Attached is Cost Estimation";

            System.Net.Mail.Attachment attachment;
            attachment = new System.Net.Mail.Attachment(@"C:\Users\Admin\Downloads\" + PName.Text + ".doc");
            mail.Attachments.Add(attachment);

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("voramish7018@gmail.com", "allbesst");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Mail Sended Successfully');", true);
        }
        catch (Exception ep)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Mail Not Sent Due To Some Error');", true);
        }
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel15.Visible = false;
        Panel9.Visible = false;
        Panel12.Visible = false;
        Panel13.Visible = false;
        Panel14.Visible = false;
        Panel8.Visible = false;
        Panel16.Visible = true;
    }
}
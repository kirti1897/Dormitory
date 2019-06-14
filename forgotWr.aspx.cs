using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;

namespace DormFinal1
{
    public partial class forgotWr : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_OTP_Click(object sender, EventArgs e)
        {
            Random rm = new Random();
            int value = rm.Next(1001, 9999);
            string destinationaddr = "91" + phNo.Text;
            string message = "Your OTP Number is " + value + "(Sent By: Online Dormitory System)";
            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                    {
                    {"apikey" , "SA5DPGVsoO8-G8dhAHj5gyJpzJaMsM38XUFtRfxMhO"},
                    {"numbers" , destinationaddr},
                    {"message" , message1},
                    {"sender" , "TXTLCL"}
                    });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;
                Lbl2.Text = "OTP sent to your entered number";
                //phNo.Text = " ";
            }
        }

        protected void Verify_OTP_Click(object sender, EventArgs e)
        {
            conn.Open();
            if (Otext.Text == Session["otp"].ToString())
            {
                Label1.Text = "Password Sent to You!";
                string destinationaddr = "91" + phNo.Text;
                string ph = phNo.Text;
                string mm = Session["sm"].ToString();
                //string ps = Session["pass"].ToString();
                String sql = "SELECT wpassword,wname FROM wardenregist where wphone=@ph and wemail=@mm";
                cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@ph", ph);
                cmd.Parameters.AddWithValue("@mm", mm);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                lbname.Text = reader["wname"].ToString();
                lbpass.Text = reader["wpassword"].ToString();
                reader.Close();
                string message = "Dear " + lbname.Text + "   Your password for Dormitory system is " + lbpass.Text + "   Don't share with anyone.Thanks!!";
                String message1 = HttpUtility.UrlEncode(message);
                using (var wb = new WebClient())
                {
                    byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                    {
                    {"apikey" , "SA5DPGVsoO8-G8dhAHj5gyJpzJaMsM38XUFtRfxMhO"},
                    {"numbers" , destinationaddr},
                    {"message" , message1},
                    {"sender" , "TXTLCL"}
                    });
                    string result = System.Text.Encoding.UTF8.GetString(response);
                    lbname.Text = "";
                    lbpass.Text = " ";
                    Label1.Text = "Your OTP is valid";

                }
            }
            else
            {
                Label1.Text = "Your OTP is not valid";
            }
        }
    }
}
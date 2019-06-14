using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Collections.Specialized;




namespace DormFinal1
{
    public partial class nightW : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["name1"]!=null){
                    lbname.Text = Session["name1"].ToString();
                    lbph.Text = Session["phone"].ToString();
                    lbmail.Text = Session["email"].ToString();
                    lbPph.Text = Session["pphone"].ToString();
                    lbpur.Text = Session["purpose"].ToString();
                    lbloc.Text = Session["location"].ToString();
                    lbfdate.Text = Session["fromDate"].ToString();
                    lbtdate.Text = Session["toDate"].ToString();
            }
            else{
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Data OR No Date Entered inStudent Section')</script>");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            conn.Open();


            String sql = "INSERT INTO Nightout VALUES('" + lbname.Text + "','" + lbmail.Text + "','" + lbph.Text + "','" + lbPph.Text + "','" + lbfdate.Text + "','" + lbtdate.Text + "','" + lbpur.Text + "','" + lbloc.Text + "','" + btnSave.Text + "')";
            cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            
            string destinationaddr = "91" + lbph.Text;
            string message = "Dear " + lbname.Text + " I'm approving you nightout as per your filled data in form. This is as per your details so it's all about your responsibility. This nightout is given to you officically with confirmaion with your parents. Thanks!!";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                    {
                    {"apikey" , "6QY/jSQh+8w-WSRF0tPGnDlesZX5ugCfc6Rzd7q0jB"},
                    {"numbers" , destinationaddr},
                    {"message" , message1},
                    {"sender" , "TXTLCL"}
                    });
                string result = System.Text.Encoding.UTF8.GetString(response);
                //savedata();
                lbShow.Text = "Nighout message sent successfully...";
                lbname.Text = "";
                lbmail.Text = "";
                lbph.Text = "";
                lbPph.Text = "";
                lbpur.Text = "";
                lbloc.Text = "";
                lbfdate.Text = " ";
                lbtdate.Text = " ";
                //SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                //smtp.Host = "smtp.gmail.com";
                //smtp.Port = 587;
                //MailMessage msg = new MailMessage();
                //lEmail.Text = Session["em"].ToString();
                //msg.From = new MailAddress(lEmail.Text);
                //smtp.UseDefaultCredentials = false;
                //smtp.Credentials = new System.Net.NetworkCredential("kirtikute1897@gmail.com", "beingkirti@8484#913391");
                //smtp.EnableSsl = true;
                //string toaddress = lbmail.Text;
                //msg.To.Add(toaddress);
                //msg.Subject = "Mail regarding to approval of nightout to you.";
                //msg.Body = "I'm approving you nightout as per your filled data in form. This is as per your details so it's all about your responsibility. This nightout is given to you officically with confirmaion with your parents. Thanks!!";
                ////string fromaddress = "<kirtikute1897@gmail.com>";

                ///*try
                //{*/
                //    smtp.Send(msg);
                //    lbShow.Text = "Mail Sent Successfully.........";
                //    lbname.Text = "";
                //    lbmail.Text = "";
                //    lbph.Text = "";
                //    lbPph.Text = "";
                //    lbpur.Text = "";
                //    lbloc.Text = "";

                ////}
                ///*catch()
                //{

                //}*/


            }
        }

        protected void btnRem_Click(object sender, EventArgs e)
        {
            string destinationaddr = "91" + lbph.Text;
            string message = "Dear " + lbname.Text + "Your nightout request is not approved.Thanks!!";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                    {
                    {"apikey" , "6QY/jSQh+8w-WSRF0tPGnDlesZX5ugCfc6Rzd7q0jB"},
                    {"numbers" , destinationaddr},
                    {"message" , message1},
                    {"sender" , "TXTLCL"}
                    });
                string result = System.Text.Encoding.UTF8.GetString(response);
                //savedata();
                lbShow.Text = "Nighout message sent successfully...";
                lbname.Text = "";
                lbmail.Text = "";
                lbph.Text = "";
                lbPph.Text = "";
                lbpur.Text = "";
                lbloc.Text = "";
                lbfdate.Text = " ";
                lbtdate.Text = " ";
            }
        }
    }
}
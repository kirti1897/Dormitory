using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DormFinal1
{
    public partial class hsin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand cmd1 = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //conn.Open();
            //string sm = lEmail.Text;
            //string psd = password.Text;
            //string myqry = "Select Hn from Register1 where He=@sm";
            //cmd1 = new SqlCommand(myqry, conn);
            //object obj = Session["name"]; // add watch and break point
            //int username = Convert.ToInt32(obj);
            //cmd1.Parameters.Add(new SqlParameter("@sm", sm));
            //SqlDataReader reader = cmd1.ExecuteReader();
            //reader.Read();
            //Lab1.Text = reader["Hn"].ToString();
            //// Response.Redirect("notice.aspx");
            //cmd1.Dispose();
           
        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {   try
            {
                conn.Open();
                string sm = lEmail.Text;
                string psd = password.Text;
                string sql = "Select Hn,Hln,Hph,Han from Register1 where Hem=@sm and Hpass=@psd";
                cmd= new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@sm", lEmail.Text);
                cmd.Parameters.AddWithValue("@psd",psd);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                Lab1.Text = reader["Hn"].ToString();
                Lab2.Text = reader["Hph"].ToString();
                Lab3.Text = reader["Han"].ToString();
                Lab4.Text = reader["Hln"].ToString();
                reader.Close();

                //string ms = "Select Hfp from Register2 where Regiter1.He=Register2.Hcem";
                //cmd = new SqlCommand(ms,conn);
                //SqlDataReader reader1 = cmd.ExecuteReader();
                //reader1.Read();
                //Lab3.Text = reader1["Hfp"].ToString();
                //reader1.Close();

                sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["name"] = Lab1.Text;
                    Session["phn"] = Lab2.Text;
                    Session["em"] = sm;
                    Session["han"] = Lab3.Text;
                    Session["hln"] = Lab4.Text;
                    //Session["fphn"] = Lab3.Text;
                    Response.Redirect("HDash.aspx");
                }
        }
            
        catch(Exception ex){
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password. If forgot password click link on page')</script>");
           
        }
                 
            
            //((SignIn)Master).TextBoxOnMasterPage.Text = Lab1.Text;
        }
    }
}
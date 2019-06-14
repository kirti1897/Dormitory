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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            String mycon = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=LatestUpdate;Integrated Security=True";
            String myquery = "select * from notification order by notfId DESC";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label4.Text = ds.Tables[0].Rows[0]["sentby"].ToString();
                Label1.Text = ds.Tables[0].Rows[0]["message"].ToString();

            }
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label5.Text = Session["name"].ToString();
            String query = "insert into reply(message,replyby) values('" + TextBox1.Text + "','" + Label5.Text + "')";
            String mycon = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=LatestUpdate;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label5.Text = Session["name"].ToString();
            Label2.Text = "Reply  Sent";
            TextBox1.Text = "";

        }
    }
}
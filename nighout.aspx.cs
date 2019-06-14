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
    public partial class nighout : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

            lbname.Text = Session["name"].ToString() +"  "+ Session["hln"].ToString();
            lbph.Text = Session["phn"].ToString();
            lbmail.Text = Session["em"].ToString();
            string hadh = Session["han"].ToString();
            string esm = Session["em"].ToString();
            conn.Open();
            string sql = "Select Hfp from Register2 where Hpan=@hadh";
            cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@hadh",hadh);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            lbPph.Text= reader["Hfp"].ToString();
            reader.Close();
            Session["name1"] = lbname.Text;
            Session["phone"] = lbph.Text;
            Session["email"] = lbmail.Text;
            Session["pphone"] = lbPph.Text;
            Session["purpose"] = Pur.Text;
            Session["location"] = Loc.Text;
            Session["fromDate"] = fDate.Text;
            Session["toDate"] = tDate.Text;
            
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            lbname.Text = "";
            lbmail.Text = "";
            lbph.Text = "";
            lbPph.Text = "";
            fDate.Text = "";
            tDate.Text = "";
            Pur.Text = "";
            Loc.Text = "";
            Lable1.Text = "Nighout information send to warden";
        }
    }
}
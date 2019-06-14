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
    public partial class adin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bnAdm_Click(object sender, EventArgs e)
        {
            string sm = lEmail.Text;
            string psd = password.Text;
            conn.Open();
            string sql = "Select * from ALogin where Almail=@sm and Alpass=@psd";
            cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@sm", sm);
            cmd.Parameters.AddWithValue("@psd", psd);
            sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Amtion.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }
    }
}
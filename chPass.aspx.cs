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
    public partial class chPass : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void checkPass(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 8)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void btnCh_Click(object sender, EventArgs e)
        {
            conn.Open();
            string ps = password.Text;
            string ml = Session["em"].ToString();
            String sql = "UPDATE Register1 SET Hpass=@ps where Hem=@ml";
            cmd = new SqlCommand(sql,conn);
            cmd.Parameters.AddWithValue("@ml", ml);
            cmd.Parameters.AddWithValue("@ps",ps);
            cmd.ExecuteNonQuery();
            password.Text=" ";
            Label1.Text = "Password Updated Succesfully";
            cmd.Dispose();
            conn.Close();
        }
    }
}
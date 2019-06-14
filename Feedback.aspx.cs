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
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string fn = tName.Text;
                string fm = tMail.Text;
                string r = tRv.Text;
                String sql = "INSERT INTO FeedBack(Name,Mail,Review)VALUES('"+fn+"','"+fm+"','"+r+"')";
                cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                //Response.Write(ex);
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password. If forgot password click link on page')</script>");

            }
            finally {
                cmd.Dispose();
                conn.Close();
                tName.Text = " ";
                tMail.Text = " ";
                tRv.Text = " ";
            }
        }
    }
}
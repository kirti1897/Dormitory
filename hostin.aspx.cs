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
    public partial class hostin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {
            /*try
            {
                
                string check = "SELECT * FROM HRegister WHERE HMail=@mail and HPass=@pass";
                cmd = new SqlCommand(check, conn);
                string sl = lEmail.Text;
                string pl = password.Text;
                SqlParameter p1 = new SqlParameter("HMail", sl);
                SqlParameter p2 = new SqlParameter("HPass", pl);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                conn.Open();
                SqlDataReader rd1 = cmd.ExecuteReader();
                if (rd1.HasRows)
                {
                    rd1.Read();
                    Response.Write("<Script> alert('Login successful')</Script>");
                    Response.Redirect("notice.aspx");
                }
                else {
                    Response.Write("<Script> alert('Invalid mail or password')</Script>");
                }
                /*String sql = "INSERT INTO HLogin(Hlmail,Hlpass)VALUES('" + sl + "','" + pl + "')";
                
                sda.InsertCommand = new SqlCommand(sql, conn);
                sda.InsertCommand.ExecuteNonQuery();
                
            }
            catch (Exception ex)
            {

                Response.Write(ex);
            }
            finally {
                cmd.Dispose();
                conn.Close();            
            }*/
            Response.Redirect("notice.aspx");
        }

        protected void bnWar_Click(object sender, EventArgs e)
        {
            try {
                conn.Open();
                string wl = lEmail.Text;
                string wp = password.Text;
                String sql = "INSERT INTO WLogin(Wlmail,Wlpass)VALUES('" + wl + "','" + wp + "')";
                cmd = new SqlCommand(sql, conn);
                sda.InsertCommand = new SqlCommand(sql, conn);
                sda.InsertCommand.ExecuteNonQuery();
                Response.Redirect("rooms.aspx");
            }
            catch (Exception ex)
            {

                Response.Write(ex);
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
                
                
            
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string al = lEmail.Text;
                string ap = password.Text;
                String sql = "INSERT INTO ALogin(Almail,Alpass)VALUES('" + al + "','" + ap + "')";
                cmd = new SqlCommand(sql, conn);
                sda.InsertCommand = new SqlCommand(sql, conn);
                sda.InsertCommand.ExecuteNonQuery();
                /*Response.Redirect("rooms.aspx");*/
            }
            catch (Exception ex)
            {

                Response.Write(ex);
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
            
        }

        
    }
}
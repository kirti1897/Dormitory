using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DormFinal1
{
    public partial class AdminRegi : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
                    
        protected void Page_Load(object sender, EventArgs e)
        {
            
    
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            con.Open();
            string str1 = @"INSERT INTO AdminRegi(name, Gender, Email, Password, cpassword, PhoneNo, DOB, desig, addr, state, district, city, pin, adhar)VALUES        ('" + Name.Text + "','" + Ddlgender.Text + "','" + email.Text + "','" + password.Text + "','" + cpassword.Text + "','" + phone.Text + "','" + dob.Text + "','" + desig.Text + "','" + addr.Text + "','" + state.Text + "','" + district.Text + "','" + city.Text + "','" + pin.Text + "','" + adhar .Text+ "')";
            SqlCommand cmd = new SqlCommand(str1,con);
            cmd.ExecuteNonQuery();
            
            lblsave.Text = "Saved Successfully";
            con.Close();
        }

       protected void btndelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string str1 = "DELETE FROM AdminRegi WHERE Email='" + email.Text + "'";
            SqlCommand cmd = new SqlCommand(str1, con);
            cmd.ExecuteNonQuery();

            lbldelete.Text = "Deleted Successfully";
            con.Close();
        }
    }
}
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
    public partial class attendance : System.Web.UI.Page
    {
        int hiD1;
        string name1;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "Mark Attendance for" + DateTime.Now.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                hiD1 = Convert.ToInt32(row.Cells[0].Text);
                name1 = row.Cells[1].Text;
                RadioButton rbtn1 = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
                RadioButton rbtn2 = (row.Cells[1].FindControl("RadioButton2") as RadioButton);
                String status1;
                if (rbtn1.Checked)
                {
                    status1 = "Present";

                }
                else
                {
                    status1 = "Absent";

                }
                String dateofclass1 = DateTime.Now.ToShortDateString();
                String sclass1 = DropDownList1.SelectedItem.Text;
                saveattendance(hiD1, name1, dateofclass1, status1, sclass1);

            }
            Label3.Text = "Attendance has been saved Successfully";
        }
        private void saveattendance(int hiD, String name, String dateofclass, String attendancestatus, String hclass)
        {
            String mycon = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(mycon);
            String query = "INSERT INTO StudentAttendance(hiD, name, dateofclass, attendancestatus, hclass)VALUES ('" + hiD + "','" + name + "','" + dateofclass + "','" + attendancestatus + "','" + hclass + "')";

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void attenbtn_Click(object sender, EventArgs e)
        {
        
        }

        protected void SDS1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
        
        }

        protected void SDS2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
        
        }
        }
    }

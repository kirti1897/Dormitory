using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DormFinal1
{
    public partial class Doccument : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        
        //string constring;
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[""].ConnectionString);
        //SqlConnection con;
       // con = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=stud;Integrated Security=True";
        SqlCommand cmd;
        //SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                if (FileUpload1.HasFile)
                {

                    string fname = FileUpload1.PostedFile.FileName;

                    string extension = Path.GetExtension(fname);
                    int fsize = FileUpload1.PostedFile.ContentLength;
                    int flag = 0;

                    switch (extension.ToLower())
                    {
                        case ".doc":
                        case ".docx":
                        case ".pdf":
                            flag = 1;
                            break;
                        default:
                            flag = 0;
                            break;
                    }

                    if (flag == 1)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/File/" + fname));


                        cmd = new SqlCommand("Insert into FileDetails(FileName,FileSize)values('" + fname + "','" + fsize / 1024 + "')", con);
                        con.Open();

                        if (cmd.ExecuteNonQuery() != 0)
                        {
                            lbl1.Text = "File Uploaded Successfully";
                            lbl1.ForeColor = System.Drawing.Color.Green;
                            con.Close();
                        }

                        else
                        {
                            lbl1.Text = "File Failed to Upload";

                        }
                    }


                    else
                    {
                        lbl1.Text = "Only .doc,.docx, and .pdf file is Allowed";
                    }

                }
                else
                {

                    lbl1.Text = "Select the file";
                }
            }
              
    }
}
    
        
    
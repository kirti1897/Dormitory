using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace DormFinal1
{
    public partial class hostReg : System.Web.UI.Page
    {

        static String imagelink;
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

            //dateofBirth.Text = DateTime.Now.ToString("dd/MM/yyyy");

            /*Session["na"] = name.Text;
            if (Session["na"] != null) {
                Response.Redirect("notice.aspx");
            }*/
        }

        protected void checkPass(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 8)
                args.IsValid = false;
            else
                args.IsValid = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            conn.Open();
            if (!FileUpload1.HasFile)
            {
                Label1.Text = "Please Insert Image.....";
            }
            else
            {
                //int filesize;
                //filesize = FileUpload1.PostedFile.ContentLength;
                //if (filesize <= 51200)
                //{
                //    System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                //    int hght = img.Height;
                //    int width = img.Width;
                //    if (hght == 200 && width == 200)
                //    {
                //        FileUpload1.SaveAs(Server.MapPath("~/ProfileImage/") + uid.Text + ".jpg");
                //        imgprofile.ImageUrl = "~/ProfileImage/" + uid.Text + ".jpg";
                //        imagelink = "/ProfileImage/" + uid.Text + ".jpg";
                //    }
                //string path = Server.MapPath("~/ProfileImage/");
                //if (FileUpload1.HasFile)
                //{
                //    string ext = Path.GetExtension(FileUpload1.FileName);
                //    if (ext == "jpg" || ext == "jpeg")
                //    {
                //        FileUpload1.SaveAs(path + Path.GetFileName(FileUpload1.FileName));
                //        imagelink = "~/ProfileImage/" + FileUpload1.FileName;
                //        //imgprofile.ImageUrl = "~/ProfileImage/" + Path.GetFileName(FileUpload1.FileName);
                //    }
                //}

                FileUpload1.SaveAs(Server.MapPath("~/imageslogin/") + Path.GetFileName(FileUpload1.FileName));
                String link="imageslogin/"+ Path.GetFileName(FileUpload1.FileName);
                        string n = name.Text;
                        string ln = lastName.Text;
                        string em = email.Text;
                        string ph = phNo.Text;
                        string g = ddl_gender.Text;
                        string bl = ddl_Bloodgr.Text;
                        string db = dateofBirth.Text;
                        string had = pAddress.Text;
                        string han = uid.Text;
                        string h = height.Text;
                        string w = weight.Text;
                        string nt = nation.Text;
                        string st = state.Text;
                        string ct = city.Text;
                        string pn = pin.Text;
                        string cr = course.Text;
                        string dr = duration.Text;
                        string pass = password.Text;
                        String sql = "INSERT INTO Register1 VALUES('" + n + "','" + ln + "','" + em + "','" + ph + "','" + bl + "','" + g + "','" + db + "','" + had + "','" + han + "','" + h + "','" + w + "','" + nt + "','" + st + "','" + ct + "','" + pn + "','" + cr + "','" + dr + "','" + pass + "','" +link+ "')";
                        cmd = new SqlCommand(sql, conn);
                        cmd.ExecuteNonQuery();
                        Label1.Text = "Registration Has Been Saved Successfully";
                        Session["han"] = uid.Text;
                        Session["pass"] = password.Text;
                    
                

                name.Text = "";
                lastName.Text = "";
                email.Text = "";
                phNo.Text = "";
                ddl_gender.Text = "";
                ddl_Bloodgr.Text = "";
                dateofBirth.Text = "";
                pAddress.Text = "";
                uid.Text = "";
                height.Text = "";
                weight.Text = "";
                nation.Text = "";
                state.Text = "";
                city.Text = "";
                course.Text = "";
                duration.Text = "";
                pin.Text = "";
                password.Text = "";
                conPass.Text = "";

                Response.Redirect("hostReg1.aspx");
            }
        }
    }

}

        /*protected void btnNext_Click(object sender, EventArgs e)
        {
            try
            {*/
        /*protected void btnSave_Click(object sender, EventArgs e)
        {
            

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {

        }/*
                Session["la"] = lastName.Text;
                Session["mail"] = email.Text;
                Session["ph"] = phNo.Text;
                Session["g"] = ddl_gender.Text;
                Session["bl"] = ddl_Bloodgr.Text;
                Session["db"] = dateofBirth.Text;
                Session["ui"] = uid.Text;
                Session["pa"] = pAddress.Text;
                Session["h"] = height.Text;
                Session["w"] = weight.Text;
                Session["n"] = nation.Text;
                Session["s"] = state.Text;
                Session["c"] = city.Text;
                Session["pn"] = pin.Text;
                Session["cs"] = course.Text;
                Session["d"] = duration.Text;
                Session["ps"] = password.Text;
                Session["cps"] = conPass.Text;
                if (Session["na"] != null || Session["la"] != null || Session["mail"] != null || Session["ph"] != null || Session["g"] != null || Session["bl"] != null || Session["db"] != null || Session["ui"] != null || Session["pa"] != null || Session["h"] != null || Session["w"] != null || Session["n"] != null || Session["s"] != null || Session["c"] != null || Session["pn"] != null || Session["cs"] != null || Session["d"] != null || Session["ps"] != null || Session["cps"] != null)
                {

                    HName = Session["na"].ToString();
                    HLname = Session["la"].ToString();
                    HMail = Session["mail"].ToString();
                    HPhno = Session["ph"].ToString();
                    HGender = Session["g"].ToString();
                    HBlgr = Session["bl"].ToString();
                    HDob = Session["db"].ToString();
                    HAno = Session["ui"].ToString();
                    HPadd = Session["pa"].ToString();
                    HHt = Session["h"].ToString();
                    HWt = Session["w"].ToString();
                    HNt = Session["n"].ToString();
                    HSt = Session["s"].ToString();
                    HCity = Session["c"].ToString();
                    HPin = Session["pn"].ToString();
                    HCourse = Session["cs"].ToString();
                    HCDr = Session["d"].ToString();
                    HPass = Session["ps"].ToString();
                    HCPass = Session["cps"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
            finally
            {
                Response.Redirect("hostReg1.aspx");
            }
        }*/
       /* protected void btnSave_Click(object sender, EventArgs e)
        {
            //try
            //{
                if (uploadimage() == true)
                {
                    conn.Open();
                    string n = name.Text;
                    string ln = lastName.Text;
                    string em = email.Text;
                    string ph = phNo.Text;
                    string g = ddl_gender.Text;
                    string bl = ddl_Bloodgr.Text;
                    string db = dateofBirth.Text;
                    string had = pAddress.Text;
                    string han = uid.Text;
                    string h = height.Text;
                    string w = weight.Text;
                    string nt = nation.Text;
                    string st = state.Text;
                    string ct = city.Text;
                    string pn = pin.Text;
                    string cr = course.Text;
                    string dr = duration.Text;
                    string pass = password.Text;
                    //imagelink = imagesaved.Text;
                    String sql = "INSERT INTO Register1(Hn,Hln,Hem,Hph,Hbl,Hgr,Hdob,Had,Han,Hht,Hwt,Hnt,Hst,Hct,Hpin,Hcr,Hdr,Hpass,Profileimage)VALUES('"+n+"','"+ln+"','"+em+"','"+ph+"','"+bl+"','"+g+"','"+db+"','"+had+"','"+han+"','"+h+"','"+w+"','"+nt+"','"+st+"','"+ct+"','"+pn+"','"+cr+"','"+dr+"','"+pass+"','"+imagelink+"')";
                    cmd = new SqlCommand(sql, conn);
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Registration Has Been Saved Successfully";
                }
            //}
            /*catch (Exception ex)
            {
                Response.Write(ex);
            }
            finally
            {
                cmd.Dispose();
                conn.Close();
                Session["n"] = name.Text;
                Session["l"] = lastName.Text;
                Session["han"] = uid.Text;
                Session["Hmail"] = email.Text;
                Response.Redirect("hostReg1.aspx");
            //}
        }
        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    
                        
                            
                            imagesaved = true;
                        }
                        else
                        {
                            Label1.Text = "Kindly Upload JPEG Image in Proper Dimensions 200 x 200";
                        }

                        
                    }
                    else
                    {
                        Label1.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                    }

                }
                else
                {
                    Label1.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
                }
            }
            else
            {
                Label1.Text = "You have not selected any file - Browse and Select File First";
            }

            return imagesaved;

        }
        protected void btnNew_Click(object sender, EventArgs e)
        {
            name.Text = "";
            lastName.Text = "";
            email.Text = "";
            phNo.Text = "";
            ddl_gender.Text = "";
            ddl_Bloodgr.Text = "";
            dateofBirth.Text = "";
            pAddress.Text = "";
            uid.Text = "";
            height.Text = "";
            weight.Text = "";
            nation.Text = "";
            state.Text = "";
            city.Text = "";
            course.Text = "";
            duration.Text = "";
            pin.Text = "";
            password.Text = "";
            conPass.Text = "";
        }

        protected void lnkpickdate_Click(object sender, EventArgs e)
        {
            datepicker.Visible = true; 
        }

        protected void datepicker_SelectionChanged(object sender, EventArgs e)
        {
            dateofBirth.Text = datepicker.SelectedDate.ToLongDateString();
            datepicker.Visible = false;
        }

    }
}*/
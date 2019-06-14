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
    public partial class hostReg1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //check if the webpage is loaded for the first time.
            {
                ViewState["PreviousPage"] =
            Request.UrlReferrer;//Saves the Previous page url in ViewState
            }
            if (Session["han"] != null) {
                lbl3.Text = Session["han"].ToString();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("hostReg.aspx");
        }

        /*try
        {
        String HFName = fName.Text;
        String HPhno = fPhNo.Text;
        String HFMail = fEmail.Text;
        String HFOcc  = fOcc.Text;
        String HMName = mName.Text;
        String HMPhno = mPhNo.Text;
        String HMMail = mEmail.Text;
        String HMOcc = mOcc.Text;
        String HGName = gfName.Text;
        String HGLname = glName.Text;
        String HGMail = gEmail.Text;
        String HGAdd = gAddress.Text;
        String HGPhno = gPhNo.Text;
        String HGOcc = gOcc.Text;
        if (Session["fn"] != null || Session["fp"] != null || Session["fm"] != null || Session["foc"] != null || Session["mn"] != null || Session["mp"] != null || Session["mm"] != null || Session["foc"] != null || Session["moc"] != null || Session["gn"] != null || Session["gl"] != null || Session["gp"] != null || Session["gd"] != null || Session["gm"] != null || Session["goc"] != null)
        {
            Response.Write("Session expired!!!!");
           HFName=Session["fn"].ToString();
            HFPhno=Session["fp"].ToString();
            HFMail=Session["fm"].ToString();
            HMName=Session["mn"].ToString();
            HMPhno=Session["mp"].ToString();
            HMMail=Session["mm"].ToString();
            HFOcc=Session["foc"].ToString();
            HMOcc=Session["moc"].ToString();
            HGName=Session["gn"].ToString();
            HGLname=Session["gl"].ToString();
            HGPhno=Session["gp"].ToString();
            HGAdd=Session["gd"].ToString();
            HGMail=Session["gm"].ToString();
            HGOcc = Session["goc"].ToString();}*/

        //SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");

        //SqlCommand cmd;
        //SqlDataAdapter sda = new SqlDataAdapter();
        //String sql = "INSERT INTO HRegister(HName, HLname, HMail, HPhno, HGender, HBlgr, HDob, HAno, HPadd, HHt, HWt, HNt, HSt, HCity, HPin, HCourse, HCDr, HPass, HCPass,HFName, HFPhno, HFMail, HMName, HMPhno, HMMail, HFOcc, HMOcc, HGName, HGLname, HGPhno, HGAdd, HGMail, HGOcc)VALUES('" + Session["na"] + "', '" + Session["la"] + "', '" + Session["mail"] + "', '" + Session["ph"] + "', '" + Session["g"] + "', '" + Session["bl"] + "', '" + Session["db"] + "', '" + Session["ui"] + "', '" + Session["pa"] + "', '" + Session["h"] + "', '" + Session["w"] + "', '" + Session["n"] + "', '" + Session["s"] + "', '" + Session["c"] + "', '" + Session["pn"] + "', '" + Session["cs"] + "', '" + Session["d"] + "', '" + Session["ps"] + "', '" + Session["cps"] + "','" + HFName + "', '" + HFPhno + "', '" + HFMail + "', '" + HMName + "', '" + HMPhno + "', '" + HMMail + "', '" + HFOcc + "', '" + HMOcc + "', '" + HGName + "', '" + HGLname + "', '" + HGPhno + "', '" + HGAdd + "', '" + HGMail + "', '" + HGOcc + "')";
        //   cmd = new SqlCommand("INSERT INTO HRegister(HName, HLname, HMail, HPhno, HGender, HBlgr, HDob, HAno, HPadd, HHt, HWt, HNt, HSt, HCity, HPin, HCourse, HCDr, HPass, HCPass,HFName, HFPhno, HFMail, HMName, HMPhno, HMMail, HFOcc, HMOcc, HGName, HGLname, HGPhno, HGAdd, HGMail, HGOcc)VALUES('" + Session["na"] + "', '" + Session["la"] + "', '" + Session["mail"] + "', '" + Session["ph"] + "', '" + Session["g"] + "', '" + Session["bl"] + "', '" + Session["db"] + "', '" + Session["ui"] + "', '" + Session["pa"] + "', '" + Session["h"] + "', '" + Session["w"] + "', '" + Session["n"] + "', '" + Session["s"] + "', '" + Session["c"] + "', '" + Session["pn"] + "', '" + Session["cs"] + "', '" + Session["d"] + "', '" + Session["ps"] + "', '" + Session["cps"] + "',@HFName,@HFPhno,@HFMail,@HMName, @HMPhno,@HMMail, @HFOcc, @HMOcc, @HGName, @HGLname, @HGPhno, @HGAdd, @HGMail, @HGOcc)", conn);
        // cmd = new SqlCommand("INSERT INTO HRegister(HName))VALUES('" + Session["na"] + "')", conn);

        //cmd.Parameters.AddWithValue("@HFName",fName.Text);
        /* cmd.Parameters.AddWithValue("@HFPhno",fPhNo.Text);
         cmd.Parameters.AddWithValue("@HFMail",fEmail.Text);
         cmd.Parameters.AddWithValue("@HMName",mName.Text);
         cmd.Parameters.AddWithValue("@HMPhno",mPhNo.Text);
         cmd.Parameters.AddWithValue("@HMMail",mEmail.Text);
         cmd.Parameters.AddWithValue("@HFOcc",fOcc.Text);
         cmd.Parameters.AddWithValue("@HMOcc",mOcc.Text);
         cmd.Parameters.AddWithValue("@HGName",gfName.Text);
         cmd.Parameters.AddWithValue("@HGLname",glName.Text);
                
         cmd.Parameters.AddWithValue("@HGPhname",gPhNo.Text);
         cmd.Parameters.AddWithValue("@HGAdd",gAddress.Text);
         cmd.Parameters.AddWithValue("@HGMail",gEmail.Text);
         cmd.Parameters.AddWithValue("@HGOcc",gOcc.Text);
                
         int i=cmd.ExecuteNonQuery();
               
         if (i > 0)
         {
/*                 string message = "Student Details are inserted";
             string content = "window.onload=function{alert('";
             content += message;
             content += "');";
             ClientScript.RegisterStartupScript(this.GetType(), "SucessMessage", content, true);
             Response.Write("Inserted");
         }
         else
         {
                 Response.Write("Not inserted");
         }
         conn.Close();
     }
     /*catch (Exception ex)
     {

         Response.Write(ex);
     }
     //finally
     //{
     //    //SqlCommand cmd
     //    //cmd.Dispose();
                
     //}
     //}

     /*finally {
         Response.Redirect("~/hostReg.aspx");
     } */

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            //try
            //{
                conn.Open();
                string f = fName.Text;
                string fm = fEmail.Text;
                string fp = fPhNo.Text;
                string m = mName.Text;
                string mm = mEmail.Text;
                string mp = mPhNo.Text;
                string fo = fOcc.Text;
                string mo = mOcc.Text;
                string gn = gfName.Text;
                string gl = glName.Text;
                string gp = gPhNo.Text;
                string gd = gAddress.Text;
                string gm = gEmail.Text;
                string go = gOcc.Text;
                String sql = "INSERT INTO Register2 VALUES('"+lbl3.Text+"','"+f+"','"+fp+"','"+fm+"','"+m+"','"+mp+"','"+mm+"','"+fo+"','"+mo+"','"+gn+"','"+gl+"','"+gd+"','"+gp+"','"+gm+"','"+go+"')";
                cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();


                /*String myqry = "INSERT INTO Hnight VALUES('"+Session["hmail"]+"','"+fm+"')";
                cmd = new SqlCommand(myqry, conn);
                cmd.ExecuteNonQuery();*/

                cmd.Dispose();
                conn.Close();
            //}
        }
    }
}

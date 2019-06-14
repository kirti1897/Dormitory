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
    public partial class HDash : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=Dormitory;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbname.Text = Session["name"].ToString() + "  " + Session["hln"].ToString();
            lbph.Text = Session["phn"].ToString();
            lbmail.Text = Session["em"].ToString();
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            Session["em"] = lMail.Text;
            Response.Redirect("chPass.aspx");
        }
    }
}
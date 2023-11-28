using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace clinic.Views.Guest
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-6SE4JFO;Initial Catalog=clinic;Integrated Security=True";
            con.Open();
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "insert into FeedbackTbl(feedback)values('" + feedback.Text.ToString() + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

        }
       
    }
}
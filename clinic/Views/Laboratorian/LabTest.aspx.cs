using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace clinic.Views.Laboratorian
{
    public partial class LabTest : System.Web.UI.Page
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
            if (!Page.IsPostBack)
            {
                DataShow();
            }
        }

     
        public void DataShow()
        {
            ds = new DataSet();
            cmd.CommandText = "select * from LabTestTbl";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        protected void EditButton_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "update LabTestTbl set test_cost='" + test_cost.Text.ToString() + "' where test_name='" + test_name.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "delete from LabTestTbl where test_name='"+test_name.Text.ToString()+"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "insert into LabTestTbl(test_name,test_cost)values('"+test_name.Text.ToString()+"','"+test_cost.Text.ToString()+"')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }
    }
}
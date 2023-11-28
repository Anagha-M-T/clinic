using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace clinic.Views.Doctors
{
    public partial class Prescription : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd=new SqlCommand();
        SqlDataAdapter sda=new SqlDataAdapter();
        DataTable dt=new DataTable();
        DataSet ds=new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-6SE4JFO;Initial Catalog=clinic;Integrated Security=True";
            con.Open();
            if (!Page.IsPostBack)
            {
                DataShow();
            }
        }

        protected void Savebutton_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "insert into PrescriptionTbl(doctor,patient,medicines,labtest,cost)values('" + doctor.Text.ToString() + "','" + patient.Text.ToString() + "','" + medicines.Text.ToString() + "','" + labtest.Text.ToString() + "','" + cost.Text.ToString() + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }
        public void DataShow()
        {
            ds = new DataSet();
            cmd.CommandText = "select * from Prescriptiontbl";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}
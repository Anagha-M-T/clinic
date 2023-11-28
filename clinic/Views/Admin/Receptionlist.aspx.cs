using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace clinic.Views.Admin
{
    public partial class Receptionlist : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda=new SqlDataAdapter();
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

        protected void Savebutton_Click(object sender, EventArgs e)
        {
            dt=new DataTable();
            cmd.CommandText = "insert into ReceptionistTbl(rec_name,rec_email,rec_addr,rec_phone,rec_password)values('"+rec_name.Text.ToString()+"','"+rec_email.Text.ToString()+"','"+ rec_addr.Text.ToString() + "','"+ rec_phone.Text.ToString() + "','"+ rec_password.Text.ToString() + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }
        public void DataShow()
        {
            ds=new DataSet();
            cmd.CommandText = "select * from ReceptionistTbl";
            cmd.Connection = con;
            sda=new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "update ReceptionistTbl set rec_email='" + rec_email.Text.ToString() + "',rec_addr='" + rec_addr.Text.ToString() + "',rec_phone='" + rec_phone.Text.ToString() + "',rec_password='" + rec_password.Text.ToString() + "' where rec_name='"+rec_name.Text.ToString()+"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "delete from ReceptionistTbl where rec_name='" + rec_name.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }
    }
}
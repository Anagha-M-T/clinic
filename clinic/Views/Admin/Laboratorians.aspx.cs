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
    public partial class Laboratorians : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection();
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
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-6SE4JFO;Initial Catalog=clinic;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO LaboratorianTbl (lab_name, lab_email, lab_password, lab_phone, lab_addr, lab_gen) VALUES (@lab_name, @lab_email, @lab_password, @lab_phone, @lab_addr, @lab_gen)", con))
                    {
                        cmd.Parameters.AddWithValue("@lab_name", lab_name.Text);
                        cmd.Parameters.AddWithValue("@lab_email", lab_email.Text);
                        cmd.Parameters.AddWithValue("@lab_password", lab_password.Text);
                        cmd.Parameters.AddWithValue("@lab_phone", lab_phone.Text);
                        cmd.Parameters.AddWithValue("@lab_addr", lab_aadr.Text);

                        // Determine the selected gender
                        string selectedGender = "";
                        if (male.Checked)
                        {
                            selectedGender = "Male";
                        }
                        else if (female.Checked)
                        {
                            selectedGender = "Female";
                        }

                        cmd.Parameters.AddWithValue("@lab_gen", selectedGender);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                // Refresh the GridView after saving
                DataShow();
            }
            catch (Exception ex)
            {
                // Handle exceptions (e.g., display an error message)
                Response.Write("Error: " + ex.Message);
            }
        }
        public void DataShow()
        {
            ds=new DataSet();
            cmd.CommandText = "select * from Laboratoriantbl";
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
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-6SE4JFO;Initial Catalog=clinic;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE LaboratorianTbl SET lab_email = @lab_email, lab_password = @lab_password, lab_phone = @lab_phone, lab_addr = @lab_addr, lab_gen = @lab_gen", con))
                    {
                        cmd.Parameters.AddWithValue("@lab_email", lab_email.Text);
                        cmd.Parameters.AddWithValue("@lab_password", lab_password.Text);
                        cmd.Parameters.AddWithValue("@lab_phone", lab_phone.Text);
                        cmd.Parameters.AddWithValue("@lab_addr", lab_aadr.Text);
                       

                        // Determine the selected gender
                        string selectedGender = "";
                        if (male.Checked)
                        {
                            selectedGender = "Male";
                        }
                        else if (female.Checked)
                        {
                            selectedGender = "Female";
                        }

                        cmd.Parameters.AddWithValue("@lab_gen", selectedGender);
                        cmd.Parameters.AddWithValue("@lab_name", lab_name.Text); // Assuming doc_name is the unique identifier

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                DataShow();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "delete from LaboratorianTbl where name='"+lab_name.Text.ToString()+"'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace clinic.Views.Receptionlist
{
    public partial class Patients : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda= new SqlDataAdapter();
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

       
        public void DataShow()
        {
            ds = new DataSet();
            cmd.CommandText = "select * from PatientTbl";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-6SE4JFO;Initial Catalog=clinic;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE PatientTbl SET pat_phone = @pat_phone, pat_gen = @pat_gen, pat_dob = @pat_dob, pat_addr = @pat_addr, pat_allergies = @pat_allergies", con))
                    {
                        cmd.Parameters.AddWithValue("@pat_phone", pat_phone.Text);
                        cmd.Parameters.AddWithValue("@pat_dob", pat_dob.Text);
                        cmd.Parameters.AddWithValue("@pat_addr", pat_addr.Text);
                        cmd.Parameters.AddWithValue("@pat_allergies", pat_allergies.Text);


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

                        cmd.Parameters.AddWithValue("@pat_gen", selectedGender);
                        cmd.Parameters.AddWithValue("@pat_name", pat_gen.Text); // Assuming doc_name is the unique identifier

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
            cmd.CommandText = "delete from PatientTbl where pat_name='" + pat_name.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-6SE4JFO;Initial Catalog=clinic;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO PatientTbl (pat_name, pat_phone, pat_dob, pat_addr, pat_allergies,pat_gen) VALUES (@pat_name, @pat_phone, @pat_dob, @pat_addr, @pat_allergies,@pat_gen)", con))
                    {
                        cmd.Parameters.AddWithValue("@pat_name", pat_name.Text);
                        cmd.Parameters.AddWithValue("@pat_phone", pat_phone.Text);
                        cmd.Parameters.AddWithValue("@pat_dob", pat_dob.Text);
                        cmd.Parameters.AddWithValue("@pat_addr", pat_addr.Text);
                        cmd.Parameters.AddWithValue("@pat_allergies", pat_allergies.Text);

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

                        cmd.Parameters.AddWithValue("@pat_gen", selectedGender);

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
    }
}
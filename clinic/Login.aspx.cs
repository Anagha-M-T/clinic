using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace clinic.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-6SE4JFO;Initial Catalog=clinic;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from LoginTbl where username='" + username.Text.ToString() + "' and password='" + pswd.Text.ToString() + "'", con);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("password", pswd.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {




                if (DropDownList1.SelectedIndex == 1)
                {
                    Response.Redirect("~/Views/Admin/Doctors.aspx");
                }
                else if (DropDownList1.SelectedIndex == 2)
                {

                    Response.Redirect("~/Views/Doctors/Prescription.aspx");

                }
                else if (DropDownList1.SelectedIndex == 3)
                {
                    Response.Redirect("~/Views/Receptionlist/Patients.aspx");
                }
                else if (DropDownList1.SelectedIndex == 4)
                {
                    Response.Redirect("~/Views/Laboratorian/LabTest.aspx");
                }
            }
            else
            {
                L.Text = "Your username and word is incorrect";
                p.ForeColor = System.Drawing.Color.Red;

            }






        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Select Role")
            {
                // Disable the DropDownList
                DropDownList1.Enabled = false;
            }
        }
    }
}
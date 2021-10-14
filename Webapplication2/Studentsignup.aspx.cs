using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webapplication2
{
    public partial class Studentsignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["StudentASDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkstudentExists())
            {

                Response.Write("<script>alert('student Already Exist with this student ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }

            void signUpNewMember()
            {
                try
                {

                    SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO student_master_table(full_name,roll_no,class,division,dob,contact,parents_contact,email_id,full_address,state,city,pincode,student_id,password,account_status) values(@full_name,@roll_no,@class,@division,@dob,@contact,@parents_contact,@email_id,@full_address,@state,@city,@pincode,@student_id,@password,@account_status)", con);
                cmd.Parameters.AddWithValue("@full_name",TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@roll_no",TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@class", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@division", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@dob",TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@contact",TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@parents_contact",TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@email_id",TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address",TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@state",DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city",TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode",TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@student_id",TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password",TextBox13.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkstudentExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from student_master_table where student_id='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}
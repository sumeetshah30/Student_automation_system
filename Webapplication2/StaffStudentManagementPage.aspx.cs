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
    public partial class StaffStudentManagementPage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["StudentASDBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        void getstudentByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from student_master_table where student_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][0].ToString(); //name
                    TextBox7.Text = dt.Rows[0][14].ToString();  //ac.stus
                    TextBox5.Text = dt.Rows[0][2].ToString();  //class
                    TextBox12.Text = dt.Rows[0][1].ToString(); //rollno
                    TextBox13.Text = dt.Rows[0][3].ToString();  //division
                    TextBox8.Text = dt.Rows[0][4].ToString();   //dob
                    TextBox3.Text = dt.Rows[0][5].ToString();   //contact
                    TextBox3.Text = dt.Rows[0][6].ToString();   //p.contact
                    TextBox4.Text = dt.Rows[0][7].ToString();   //email
                    TextBox9.Text = dt.Rows[0][9].ToString();   //state
                    TextBox10.Text = dt.Rows[0][10].ToString();  //city
                    TextBox11.Text = dt.Rows[0][11].ToString();  //pincode
                    TextBox6.Text = dt.Rows[0][8].ToString();   //full name

                }
                else
                {
                    Response.Write("<script>alert('Invalid student ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getstudentByID();
        }
       
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("deactive");
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("active");
        }

        void updateMemberStatusByID(string status)
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE student_master_table SET account_status='" + status + "' WHERE student_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('student Status Updated');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid student ID');</script>");
            }

        }

        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from student_master_table where student_id='" + TextBox1.Text.Trim() + "';", con);
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

        void deleteMemberByID()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from student_master_table WHERE student_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('student Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid student ID');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemberByID();
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox5.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox8.Text = "";
            TextBox3.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox6.Text = "";
        }
    }
}
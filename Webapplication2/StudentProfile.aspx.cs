using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Webapplication2
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["StudentASDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["student_id"].ToString() == "" || Session["student_id"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("Studentlogin.aspx");
                }
                else
                {
                    getstudentaccademicData();

                    if (!Page.IsPostBack)
                    {
                        getstudentPersonalDetails();
                    }

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Studentlogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["student_id"].ToString() == "" || Session["student_id"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Studentlogin.aspx");
            }
            else
            {
                updateUserPersonalDetails();

            }
        }



        // user defined function


        void updateUserPersonalDetails()
        {
            String password = "";
            if (TextBox14.Text.Trim() == "")
            {
                password = TextBox13.Text.Trim();
            }
            else
            {
                password = TextBox14.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("update student_master_table set full_name=@full_name,roll_no=@roll_no, dob=@dob,class=@class, division=@division, contact=@contact,parents_contact=@parents_contact, email_id=@email_id, state=@state, city=@city, pincode=@pincode, full_address=@full_address, password=@password, account_status=@account_status WHERE student_id='" + Session["student_id"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@email_id", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@state", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.Parameters.AddWithValue("@class", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@division", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@roll_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@parents_contact", TextBox6.Text.Trim());
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getstudentPersonalDetails();
                    getstudentaccademicData();
                }
                else
                {
                    Response.Write("<script>alert('Invaid entry');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getstudentPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from student_master_table where student_id='" + Session["student_id"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                TextBox4.Text = dt.Rows[0]["full_name"].ToString();
                TextBox7.Text = dt.Rows[0]["dob"].ToString();
                TextBox5.Text = dt.Rows[0]["contact"].ToString();
                TextBox9.Text = dt.Rows[0]["email_id"].ToString();
                TextBox15.Text = dt.Rows[0]["state"].ToString().Trim();
                TextBox11.Text = dt.Rows[0]["city"].ToString();
                TextBox12.Text = dt.Rows[0]["pincode"].ToString();
                TextBox10.Text = dt.Rows[0]["full_address"].ToString();
                TextBox8.Text = dt.Rows[0]["student_id"].ToString();
                TextBox13.Text = dt.Rows[0]["password"].ToString();
                TextBox1.Text = dt.Rows[0]["class"].ToString();
                TextBox2.Text = dt.Rows[0]["division"].ToString();
                TextBox3.Text = dt.Rows[0]["roll_no"].ToString();
                TextBox6.Text = dt.Rows[0]["parents_contact"].ToString();

                Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();

                if (dt.Rows[0]["account_status"].ToString().Trim() == "active")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-success");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "pending")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-warning");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "deactive")
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-danger");
                }
                else
                {
                    Label1.Attributes.Add("class", "badge badge-pill badge-info");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void getstudentaccademicData()
        {
            
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from student_master_table where student_id='" + Session["student_id"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox16.Text = dt.Rows[0][1].ToString();
                    TextBox17.Text = dt.Rows[0][2].ToString();
                    TextBox18.Text = dt.Rows[0][3].ToString();
                    TextBox19.Text = dt.Rows[0][0].ToString();
                    TextBox20.Text = dt.Rows[0][27].ToString();
                    TextBox21.Text = dt.Rows[0][28].ToString();
                    TextBox23.Text = dt.Rows[0][15].ToString();
                    TextBox24.Text = dt.Rows[0][16].ToString();
                    TextBox26.Text = dt.Rows[0][17].ToString();
                    TextBox27.Text = dt.Rows[0][18].ToString();
                    TextBox29.Text = dt.Rows[0][19].ToString();
                    TextBox30.Text = dt.Rows[0][20].ToString();
                    TextBox32.Text = dt.Rows[0][21].ToString();
                    TextBox33.Text = dt.Rows[0][22].ToString();
                    TextBox35.Text = dt.Rows[0][23].ToString();
                    TextBox36.Text = dt.Rows[0][24].ToString();
                    TextBox38.Text = dt.Rows[0][25].ToString();
                    TextBox39.Text = dt.Rows[0][26].ToString();
                    TextBox41.Text = dt.Rows[0][29].ToString();
                    TextBox42.Text = dt.Rows[0][30].ToString();
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
            }
        
    }
}
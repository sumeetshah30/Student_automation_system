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
    public partial class staffprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["StudentASDBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["staff_username"].ToString() == "" || Session["Staff_username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("Stafflogin.aspx");
                }
                else
                {
                   

                    
                        getUserPersonalDetails();
                   

                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("Stafflogin.aspx");
            }
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["staff_username"].ToString() == "" || Session["staff_username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("stafflogin.aspx");
            }
            else
            {
                updatestaffpassword();

            }
        }

        void updatestaffpassword()
        {
            string password = "";
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


                SqlCommand cmd = new SqlCommand("update staff_login_tbl set password=@password WHERE staff_username='" + Session["staff_username"].ToString().Trim() + "'", con);



                cmd.Parameters.AddWithValue("@password", password);


                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getUserPersonalDetails();

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

        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from staff_login_tbl where staff_username='" + Session["staff_username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox8.Text = dt.Rows[0]["staff_username"].ToString();
                TextBox13.Text = dt.Rows[0]["password"].ToString();






            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }




        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffStudentManagementPage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff_StudentAccadamic.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("createclass.aspx");
        }
    }
}
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
    public partial class Staff_studentAccadamic : System.Web.UI.Page
    {
        double v8, v16;
        float att_per;



        string strcon = ConfigurationManager.ConnectionStrings["StudentASDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            att_per = avgattendanc();
            Updatestudentmarks();
            calculatetotal();
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

                SqlCommand cmd = new SqlCommand("SELECT * from student_master_table where student_id='" + TextBox12.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][0].ToString();
                    TextBox10.Text = dt.Rows[0][27].ToString();
                    TextBox3.Text = dt.Rows[0][28].ToString();
                    TextBox5.Text = dt.Rows[0][15].ToString();
                    TextBox6.Text = dt.Rows[0][16].ToString();
                    TextBox9.Text = dt.Rows[0][17].ToString();
                    TextBox11.Text = dt.Rows[0][18].ToString();
                    TextBox14.Text = dt.Rows[0][19].ToString();
                    TextBox15.Text = dt.Rows[0][20].ToString();
                    TextBox17.Text = dt.Rows[0][21].ToString();
                    TextBox18.Text = dt.Rows[0][22].ToString();
                    TextBox20.Text = dt.Rows[0][23].ToString();
                    TextBox21.Text = dt.Rows[0][24].ToString();
                    TextBox23.Text = dt.Rows[0][25].ToString();
                    TextBox24.Text = dt.Rows[0][26].ToString();
                    TextBox26.Text = dt.Rows[0][29].ToString();
                    TextBox27.Text = dt.Rows[0][30].ToString();
                    TextBox43.Text = att_per.ToString();

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

        void Updatestudentmarks()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE student_master_table set eng_score=@eng_score,eng_outoff=@eng_outoff,maths_score=@maths_score,maths_outoff=@maths_outoff,phy_score=@phy_score,phy_outoff=@phy_outoff,chem_score=@chem_score,chem_outoff=@chem_outoff,bio_score=@bio_score,bio_outoff=@bio_outoff," +
                    "his_score=@his_score,his_outoff=@his_outoff,geo_score=@geo_score,geo_outoff=@geo_outoff where student_id='" + TextBox12.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@eng_score", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@eng_outoff", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@maths_score", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@maths_outoff", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@phy_score", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@phy_outoff", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@chem_score", TextBox14.Text.Trim());
                cmd.Parameters.AddWithValue("@chem_outoff", TextBox15.Text.Trim());
                cmd.Parameters.AddWithValue("@bio_score", TextBox17.Text.Trim());
                cmd.Parameters.AddWithValue("@bio_outoff", TextBox18.Text.Trim());
                cmd.Parameters.AddWithValue("@his_score", TextBox20.Text.Trim());
                cmd.Parameters.AddWithValue("@his_outoff", TextBox21.Text.Trim());
                cmd.Parameters.AddWithValue("@geo_score", TextBox23.Text.Trim());
                cmd.Parameters.AddWithValue("@geo_outoff", TextBox24.Text.Trim());





                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getstudentByID();

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

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            att_per = avgattendanc();
            getstudentByID();
        }



        void calculatetotal()
        {
            double v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0, v7 = 0, v9 = 0, v10 = 0, v11 = 0, v12 = 0, v13 = 0, v14 = 0, v15 = 0;
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("SELECT * from student_master_table where student_id='" + TextBox12.Text.Trim() + "'", con);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        //firstVariable = reader[0].ToString();
                        //secondVariable = reader[1].ToString();
                        string s1 = TextBox10.Text.Trim();
                        string s2 = TextBox5.Text.Trim();
                        string s3 = TextBox9.Text.Trim();
                        string s4 = TextBox14.Text.Trim();
                        string s5 = TextBox17.Text.Trim();
                        string s6 = TextBox20.Text.Trim();
                        string s7 = TextBox23.Text.Trim();

                        string s9 = TextBox3.Text.Trim();
                        string s10 = TextBox6.Text.Trim();
                        string s11 = TextBox11.Text.Trim();
                        string s12 = TextBox15.Text.Trim();
                        string s13 = TextBox18.Text.Trim();
                        string s14 = TextBox21.Text.Trim();
                        string s15 = TextBox24.Text.Trim();


                        v8 = 0;
                        v16 = 0;
                        v1 = Convert.ToDouble(s1);//eng_score
                        v2 = Convert.ToDouble(s2);//maths_score
                        v3 = Convert.ToDouble(s3);//phy_score
                        v4 = Convert.ToDouble(s4);//chem_score
                        v5 = Convert.ToDouble(s5);//bio_score
                        v6 = Convert.ToDouble(s6);//his_score
                        v7 = Convert.ToDouble(s7);//geo_score



                        v9 = Convert.ToDouble(s9);
                        v10 = Convert.ToDouble(s10);
                        v11 = Convert.ToDouble(s11);
                        v12 = Convert.ToDouble(s12);
                        v13 = Convert.ToDouble(s13);
                        v14 = Convert.ToDouble(s14);
                        v15 = Convert.ToDouble(s15);
                        v8 = v1 + v2 + v3 + v4 + v5 + v6 + v7;
                        v16 = v9 + v10 + v11 + v12 + v13 + v14 + v15;

                    }
                }








            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }


            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE student_master_table set total_score=@total_score,total_outoff=@total_outoff where student_id='" + TextBox12.Text.Trim() + "'", con);
                string s8 = Convert.ToString(v8);
                string s16 = Convert.ToString(v16);

                cmd.Parameters.AddWithValue("@total_score", s8.Trim());
                cmd.Parameters.AddWithValue("@total_outoff", s16.Trim());

                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result > 0)
                {

                    Response.Write("<script>alert('Your Details Updated Successfully');</script>");
                    getstudentByID();

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

        int avgattendanc()
        {


            SqlConnection con = new SqlConnection(strcon);
            con.Open();



            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) from attendance_tbl WHERE student_id='" + TextBox12.Text.Trim() + "' AND att_status='" + "Present" + "';", con);

            int presentCount = 0;

            {

                presentCount = (int)cmd.ExecuteScalar();

            }

            SqlCommand cmd1 = new SqlCommand("SELECT COUNT(*) from attendance_tbl WHERE student_id='" + TextBox12.Text.Trim() + "'; ", con);


            int totalCount = 0;

            {

                totalCount = (int)cmd1.ExecuteScalar();

            }
            con.Close();


            return (presentCount / totalCount) * 100;


        }









    }
}






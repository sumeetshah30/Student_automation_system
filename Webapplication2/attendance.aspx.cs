using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Webapplication2
{
    public partial class attendance : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["StudentASDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "Mark Attendance For " + DateTime.Now.ToShortDateString();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                String student_id1 = (row.Cells[0].Text);
                int roll_no1 = Convert.ToInt32(row.Cells[1].Text);
                String full_name1 = (row.Cells[2].Text);
                RadioButton rbtn1 = (row.Cells[3].FindControl("RadioButton1") as RadioButton);
                RadioButton rbtn2 = (row.Cells[3].FindControl("RadioButton2") as RadioButton);

                String att_status1;
                if (rbtn1.Checked)

                {

                    att_status1 = "Present";

                }

                else 
                {
                    att_status1 = "Absent";
                }
                String date1 = DateTime.Now.ToShortDateString();
                String sclass1 = DropDownList4.SelectedItem.Text;
                String division1 = DropDownList5.SelectedItem.Text;
                save(student_id1 , roll_no1, full_name1, date1, att_status1 , sclass1 , division1);
            }

            Label2.Text = "Attendance Has Been Saved Successfully";
        }
        private void save( String student_id, int roll_no, String full_name, String date, String att_status, String sclass, String division)
        {
            String query = "insert into attendance_tbl(student_id,roll_no,full_name,date,att_status,class,division) values('" + student_id + "','" + roll_no+"','"+full_name+ "','" + date + "','" + att_status + "','" + sclass + "','" + division + "')";

            SqlConnection con = new SqlConnection(strcon);

            con.Open();

            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = query;

            cmd.Connection = con;

            cmd.ExecuteNonQuery();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        
    }
}
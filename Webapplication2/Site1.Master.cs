using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webapplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(" "))
                {
                    LinkButton1.Visible = true; // Student Login
                    LinkButton2.Visible = false; // Log out
                    LinkButton3.Visible = false; // Online Attendance
                    LinkButton7.Visible = false; //Hello User
                    LinkButton4.Visible = true; // Sign Up
                    LinkButton5.Visible = true; // Staff login         

                    LinkButton6.Visible = false; // PErsonal infp
                    LinkButton8.Visible = false;  //accedemic
                    LinkButton11.Visible = false;  //management

                }
                else if (Session["role"].Equals("student"))
                {
                    LinkButton1.Visible = false; // Student Login
                    LinkButton2.Visible = true; // Log out
                    LinkButton3.Visible = false; // Online Attendance
                    LinkButton7.Visible = true; //Hello User
                    LinkButton7.Text = "Hello " + Session["student_id"].ToString();
                    LinkButton4.Visible = false; // Sign Up
                    LinkButton5.Visible = false; // Staff login

                    LinkButton6.Visible = false; // PErsonal infp
                    LinkButton8.Visible = false;  //accedemic
                    LinkButton11.Visible = false;  //management
                }
                else if (Session["role"].Equals("staff"))
                {
                    LinkButton1.Visible = false; // Student Login
                    LinkButton2.Visible = true; // Log out
                    LinkButton3.Visible = true; // Online Attendance
                    LinkButton7.Visible = true; //Hello User
                    LinkButton7.Text = "Hello " + Session["staff_username"].ToString();
                    LinkButton4.Visible = false; // Sign Up
                    LinkButton5.Visible = false; // Staff login

                    LinkButton6.Visible = true; // PErsonal infp
                    LinkButton8.Visible = true;  //accedemic
                    LinkButton11.Visible = true;  //management
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("attendance.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stafflogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Studentlogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Studentsignup.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }



       

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["staff_username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["account_status"] = "";

            LinkButton1.Visible = true; // Student Login
            LinkButton2.Visible = false; // Log out
            LinkButton3.Visible = false; // Online Attendance
            LinkButton7.Visible = false; //Hello User
            LinkButton4.Visible = true; // Sign Up
            LinkButton5.Visible = true; // Staff login


            LinkButton6.Visible = false; // PErsonal infp
            LinkButton8.Visible = false;  //accedemic
            LinkButton11.Visible = false;  //management
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("StaffStudentManagementPage.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff_StudentAccadamic.aspx");
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Response.Redirect("createclass.aspx");
        }
    }
}
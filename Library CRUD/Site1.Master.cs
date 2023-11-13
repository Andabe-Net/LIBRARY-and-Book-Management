using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_CRUD
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                //if (ReferenceEquals(Session["role"], null))
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; //user login button
                    LinkButton2.Visible = true; //user sign up button

                    LinkButton3.Visible = false;  //user logout
                    LinkButton7.Visible = false; //hello user button

                    LinkButton6.Visible = true;   //admin login
                    LinkButton11.Visible = false;   //author management
                    LinkButton12.Visible = false;   //publisher management
                    LinkButton8.Visible = false;        //book inventory
                    LinkButton9.Visible = false;         //book issuing
                    LinkButton10.Visible = false;            //member management
                }

                else if (Session["role"].Equals("user"))
                {

                    LinkButton1.Visible = false; //user login button
                    LinkButton2.Visible = false; //user sign up button

                    LinkButton3.Visible = true;  //user logout

                    LinkButton7.Text = "Hello " + Session["username"].ToString(); //hello user button
                    LinkButton7.Visible = true;
                    LinkButton6.Visible = true;   //admin login
                    LinkButton11.Visible = false;   //author management
                    LinkButton12.Visible = false;   //publisher management
                    LinkButton8.Visible = false;        //book inventory
                    LinkButton9.Visible = false;         //book issuing
                    LinkButton10.Visible = false;            //member management

                }

                else if (Session["role"].Equals("admin"))
                {

                    LinkButton1.Visible = false; //user login button
                    LinkButton2.Visible = false; //user sign up button

                    LinkButton3.Visible = true;  //user logout
                    LinkButton7.Text = "Hello " + Session["username"].ToString();  //hello user button
                    LinkButton7.Visible = true;

                    LinkButton6.Visible = false;   //admin login
                    LinkButton11.Visible = true;   //author management
                    LinkButton12.Visible = true;   //publisher management
                    LinkButton8.Visible = true;        //book inventory
                    LinkButton9.Visible = true;         //book issuing
                    LinkButton10.Visible = true;            //member management
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('this page " + ex.Message + "');</script>");
            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAuthorManagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("publisherManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookInventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookissue.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("memberManagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("terms.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("booklist.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Session["role"] = "";
            Session["username"] = "";
            Session["fullname"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //user login button
            LinkButton2.Visible = true; //user sign up button

            LinkButton3.Visible = false;  //user logout
            LinkButton7.Visible = false; //hello user button

            LinkButton6.Visible = true;   //admin login
            LinkButton11.Visible = false;   //author management
            LinkButton12.Visible = false;   //publisher management
            LinkButton8.Visible = false;        //book inventory
            LinkButton9.Visible = false;         //book issuing
            LinkButton10.Visible = false;            //member management

            Response.Redirect("homepage.aspx");

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }
    }
}
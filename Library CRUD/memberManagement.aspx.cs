using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Library_CRUD
{
    public partial class memberManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //click events
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert('Member ID Required');</script>");
            }
            else
            {
                GetMemberDetailsById();

            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert('Member ID Required');</script>");
            }
            else
            {
                DeleteMemberPermanentlyById();
                Response.Write("<script>alert('Member deleted Successfully!');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert('Id field can not be empty');</script>");
            }
            else
            {
                UpdateStatus("Active");
                TextBox1.Text = "Active";
                Response.Write("<script>alert('Member status updated');</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert('Id field can not be empty');</script>");
            }
            else
            {
                UpdateStatus("Pending");
                TextBox1.Text = "Pending";
                Response.Write("<script>alert('Member status updated');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert('Id field can not be empty');</script>");
            }
            else
            {
                UpdateStatus("DeActive");
                TextBox1.Text = "DeActive";
                Response.Write("<script>alert('Member status updated');</script>");
            }
        }

        //defined actions
        void GetMemberDetailsById()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand getMember = new SqlCommand("SELECT * FROM member_master_tbl WHERE  member_id='" + TextBox4.Text.Trim() + "'", conn);
                SqlDataAdapter memberFound = new SqlDataAdapter(getMember);
                DataTable memberList = new DataTable();
                memberFound.Fill(memberList);
                if (memberList.Rows.Count > 0)
                {
                    TextBox2.Text = memberList.Rows[0][0].ToString();
                    TextBox1.Text = memberList.Rows[0][10].ToString();
                    TextBox6.Text = memberList.Rows[0][1].ToString();
                    TextBox7.Text = memberList.Rows[0][2].ToString();
                    TextBox3.Text = memberList.Rows[0][3].ToString();
                    TextBox11.Text = memberList.Rows[0][4].ToString();
                    TextBox5.Text = memberList.Rows[0][5].ToString();
                    TextBox10.Text = memberList.Rows[0][6].ToString();
                    TextBox12.Text = memberList.Rows[0][7].ToString();
                }
                else
                {

                    Response.Write("<script>alert('Member not found');</script>");
                }

                getMember.ExecuteNonQuery();
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void DeleteMemberPermanentlyById()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand deleteMember = new SqlCommand("DELETE FROM member_master_tbl  WHERE  member_id='" + TextBox4.Text.Trim() + "'", conn);

                deleteMember.ExecuteNonQuery();
                conn.Close();


                //ClearForm();
                MemberTbl.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void UpdateStatus(string status)
        {
            SqlConnection conn = new SqlConnection(strcon);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand updateStatus = new SqlCommand("UPDATE member_master_tbl SET account_status='" + status + "' WHERE  member_id='" + TextBox4.Text.Trim() + "'", conn);

            updateStatus.ExecuteNonQuery();
            conn.Close();
            MemberTbl.DataBind();


        }

        bool NullCheckForId()
        {
            try
            {

                if (TextBox4.Text.Trim() == string.Empty)
                {
                    return true;
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            return false;
        }
    }
}
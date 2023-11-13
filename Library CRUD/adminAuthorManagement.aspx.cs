using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_CRUD
{
    public partial class adminAuthorManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (NullCheckForIdAndName())
            {
                Response.Write("<script>alert('Hi, Id or Name field is empty, try again.');</script>");
            }
            else if (CheckAuthorExists())
            {
                Response.Write("<script>alert('Author with Id already Exists');</script>");

            }
            else
            {
                AddAuthor();
            }
        }//add

        protected void Button2_Click(object sender, EventArgs e)    //update
        {
            if (NullCheckForIdAndName())
            {
                Response.Write("<script>alert('Hi, Id or Name field is empty, try again.');</script>");
            }

            else if (CheckAuthorExists())
            {
                UpdateAuthorById();
            }
            else
            {
                Response.Write("<script>alert(' No Author with Id Exists');</script>");

            }

        }

        protected void Button3_Click(object sender, EventArgs e)    //delete
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert('Hi, Id field cannot be empty.');</script>");
            }
            else if (CheckAuthorExists())
            {
                DeleteAuthorById();
            }
            else
            {
                Response.Write("<script>alert(' No Author with Id Exists');</script>");

            }

        }

        protected void Button4_Click(object sender, EventArgs e)    //get
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert('Hi, Id field cannot be empty.');</script>");
            }
            else
            {
                GetAuthorById();
            }


        }

        // Defined Actions
        bool CheckAuthorExists()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand check_User = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "';", conn);
                SqlDataAdapter userFound = new SqlDataAdapter(check_User);
                DataTable dataTable = new DataTable();
                userFound.Fill(dataTable);
                if (dataTable.Rows.Count >= 1)
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

        void AddAuthor()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand check_Author = new SqlCommand("INSERT INTO author_master_tbl (author_id, author_name) values(@author_id, @author_name)", conn);
                check_Author.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                check_Author.Parameters.AddWithValue("@author_name", TextBox3.Text.Trim());
                check_Author.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Author added Successfully!');</script>");
                ClearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        void UpdateAuthorById()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand updateAuthor = new SqlCommand("UPDATE author_master_tbl  SET author_name=@author_name WHERE  author_id='" + TextBox1.Text.Trim() + "'", conn);

                updateAuthor.Parameters.AddWithValue("@author_name", TextBox3.Text.Trim());
                updateAuthor.ExecuteNonQuery();
                conn.Close();

                Response.Write("<script>alert('Author updated Successfully!');</script>");
                ClearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        void DeleteAuthorById()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand deleteAuthor = new SqlCommand("DELETE FROM author_master_tbl  WHERE  author_id='" + TextBox1.Text.Trim() + "'", conn);

                deleteAuthor.ExecuteNonQuery();
                conn.Close();

                Response.Write("<script>alert('Author deleted Successfully!');</script>");
                ClearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        void GetAuthorById()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand getAuthor = new SqlCommand("SELECT * FROM author_master_tbl WHERE  author_id='" + TextBox1.Text.Trim() + "'", conn);
                SqlDataAdapter authorFound = new SqlDataAdapter(getAuthor);
                DataTable authorList = new DataTable();
                authorFound.Fill(authorList);
                if (authorList.Rows.Count > 0)
                {
                    TextBox3.Text = authorList.Rows[0][1].ToString();
                }
                else
                {

                    Response.Write("<script>alert('Author not found');</script>");
                }

                getAuthor.ExecuteNonQuery();
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        bool NullCheckForId()
        {
            try
            {

                if (TextBox1.Text.Trim() == string.Empty)
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
        bool NullCheckForIdAndName()
        {
            try
            {

                if (TextBox1.Text.Trim() == string.Empty || TextBox3.Text.Trim() == string.Empty)
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

        void ClearForm()
        {
            TextBox1.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }
    }


}

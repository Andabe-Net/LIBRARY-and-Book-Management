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
    public partial class publisherManagement : System.Web.UI.Page

    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //click events
        protected void Button1_Click(object sender, EventArgs e)    //add
        {
            if (NullCheckForIdAndName())
            {
                Response.Write("<script>alert('Id and name fields Required');</script>");
            }

            else if (CheckPublisherExists())
            {
                Response.Write("<script>alert('Publisher with Id already Exists');</script>");
            }

            else
            {
                AddPublisher();

                Response.Write("<script>alert('Publisher added Successfully!');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)    //update
        {
            if (NullCheckForIdAndName())
            {
                Response.Write("<script>alert('Id and name fields Required');</script>");
            }

            else if (CheckPublisherExists())
            {
                UpdatePublisherById();

                Response.Write("<script>alert('Publisher updated Successfully!');</script>");
            }
            else
            {
                Response.Write("<script>alert('Publisher with Id not found');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)    //delete
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert('Id field Required');</script>");
            }

            else if (CheckPublisherExists())
            {
                DeletePublisherById();

                Response.Write("<script>alert('Publisher deleted Successfully!');</script>");
            }
            else
            {
                Response.Write("<script>alert('Publisher with Id not found');</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)    //get
        {
            if (NullCheckForId())
            {
                Response.Write("<script>alert(' Id field Required');</script>");
            }

            else if (CheckPublisherExists())
            {
                GetPublisherById();
            }
            else
            {
                Response.Write("<script>alert('Publisher with Id not found');</script>");
            }
        }


        //defined actions
        bool CheckPublisherExists()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand check_publisher = new SqlCommand("SELECT * FROM publisher_master_tbl WHERE publisher_id='" + TextBoxId.Text.Trim() + "';", conn);
                SqlDataAdapter userFound = new SqlDataAdapter(check_publisher);
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

        void AddPublisher()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand add_publisher = new SqlCommand("INSERT INTO publisher_master_tbl (publisher_id, publisher_name) values(@publisher_id, @publisher_name)", conn);
                add_publisher.Parameters.AddWithValue("@publisher_id", TextBoxId.Text.Trim());
                add_publisher.Parameters.AddWithValue("@publisher_name", TextBoxName.Text.Trim());

                add_publisher.ExecuteNonQuery();
                conn.Close();
                
                ClearForm();
                GridView3.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        void UpdatePublisherById()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand updatePublisher = new SqlCommand("UPDATE publisher_master_tbl  SET publisher_name=@publisher_name WHERE  publisher_id='" + TextBoxId.Text.Trim() + "'", conn);

                updatePublisher.Parameters.AddWithValue("@publisher_name", TextBoxName.Text.Trim());
                updatePublisher.ExecuteNonQuery();
                conn.Close();

               
                ClearForm();
                GridView3.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }

        void DeletePublisherById()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand deletePublisher = new SqlCommand("DELETE FROM publisher_master_tbl  WHERE  publisher_id='" + TextBoxId.Text.Trim() + "'", conn);

                deletePublisher.ExecuteNonQuery();
                conn.Close();

                ClearForm();
                GridView3.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void GetPublisherById()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand getPublisher = new SqlCommand("SELECT * FROM publisher_master_tbl WHERE  publisher_id='" + TextBoxId.Text.Trim() + "'", conn);
                SqlDataAdapter publisherFound = new SqlDataAdapter(getPublisher);
                DataTable publisherList = new DataTable();
                publisherFound.Fill(publisherList);
                if (publisherList.Rows.Count > 0)
                {
                    TextBoxName.Text = publisherList.Rows[0][1].ToString();
                }
                else
                {

                    Response.Write("<script>alert('Author not found');</script>");
                }

                getPublisher.ExecuteNonQuery();
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

                if (TextBoxId.Text.Trim() == string.Empty)
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

                if (TextBoxId.Text.Trim() == string.Empty || TextBoxName.Text.Trim() == string.Empty)
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
            TextBoxId.Text = string.Empty;
            TextBoxName.Text = string.Empty;
        }
    }
}
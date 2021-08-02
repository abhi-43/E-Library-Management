using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // GO
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getUserById();
        }

        void getUserById()
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

                    SqlCommand cmd = new SqlCommand("SELECT * from member_master_table where member_id='" + TextBox3.Text.Trim() + "';", con);

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            TextBox4.Text = dr.GetValue(0).ToString();
                            TextBox7.Text = dr.GetValue(10).ToString();
                            TextBox8.Text = dr.GetValue(1).ToString();
                            TextBox9.Text = dr.GetValue(2).ToString();
                            TextBox10.Text = dr.GetValue(3).ToString();
                            TextBox11.Text = dr.GetValue(4).ToString();
                            TextBox12.Text = dr.GetValue(5).ToString();
                            TextBox13.Text = dr.GetValue(6).ToString();
                            TextBox14.Text = dr.GetValue(7).ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }


            // Active
            protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("active");
        }

        // Pending
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("pending");
        }

        // Deactive
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusById("deactive");

        }

        void updateMemberStatusById(string status)
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

                    SqlCommand cmd = new SqlCommand("UPDATE member_master_table SET account_status='" + status + "' WHERE member_id='" + TextBox3.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated');</script>");
                }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }

            // Delete
            protected void Button2_Click(object sender, EventArgs e)
            {
                deleteMemberById();
            }

            void deleteMemberById()
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

                        SqlCommand cmd = new SqlCommand("DELETE FROM member_master_table WHERE member_id='" + TextBox3.Text.Trim() + "'", con);

                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Member deleted successfully.');</script>");
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
                    Response.Write("<script>alert('Invalid Member ID');</script>");
                }
            }
            void clearForm()
            {
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                TextBox13.Text = "";
                TextBox14.Text = "";
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

                    SqlCommand cmd = new SqlCommand("SELECT * from member_master_table where member_id='" + TextBox3.Text.Trim() + "';", con);

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

            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
            {

            }
        }
    }
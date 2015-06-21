using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



namespace front
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
         }

         protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (Page.IsValid)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand();

                string sql = "INSERT INTO signup (email,password,phone,dob,firstname,lastname,gender)";
                sql += "VALUES (@email,@pass,@phone,@dob,@fname,@lname,@gender)";


                con.Open();


                cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Phone", TextBox3.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text);
                cmd.Parameters.AddWithValue("@fname", TextBox5.Text);
                cmd.Parameters.AddWithValue("@lname", TextBox6.Text);
                cmd.Parameters.AddWithValue("@gender", TextBox7.Text);
                cmd.Connection = con;
                cmd.CommandText = sql;
                //con.Open();
                try
                {
                    if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "")
                    {
                        Response.Write("Empty input");
                    }
                    else
                    {
                        cmd.ExecuteNonQuery();
                        Response.Redirect("index.html", true);
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }

            }
        }

    } 




        }
    }

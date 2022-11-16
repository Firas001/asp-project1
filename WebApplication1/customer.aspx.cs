using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class customer : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_add_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("insert into customer(customerNum, customerName,Address1,Phone) values(@id,@name,@address, @phone)", con);

                cmd.Parameters.AddWithValue("@id", txt_id.Text);
                cmd.Parameters.AddWithValue("@name", txt_name.Text);
                cmd.Parameters.AddWithValue("@address", txt_add.Text);
                cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                lmsg.Text = "تم الادخال";


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void btdel_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("delete customer where customerNum=@cunum", con);
                cmd.Parameters.AddWithValue("@cunum", txt_id.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                lmsg.Text = "تم الحذف";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btupdate_Click(object sender, EventArgs e)
        {

        }
    }
}
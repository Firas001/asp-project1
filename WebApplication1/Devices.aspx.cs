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
    public partial class Devices : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_add_click(object sender, EventArgs e)
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

                alert.Visible = true;
                lmsg.Text = "تم الادخال بنجاح";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void bt_edit_click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE customer SET customerName=@name, Address1=@address, Phone=@phone WHERE customerNum=@num", con);

                cmd.Parameters.AddWithValue("@num", txt_id.Text.Trim());
                cmd.Parameters.AddWithValue("@name", txt_name.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txt_add.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", txt_phone.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                alert.Visible = true;
                lmsg.Text = "تم التعديل بنجاح";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void bt_view_click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "select * from customer where customerNum=" + txt_id.Text.Trim();

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txt_name.Text = dt.Rows[0]["customerName"].ToString(); //الاسم
                txt_add.Text = dt.Rows[0]["Address1"].ToString(); //العنوان
                txt_phone.Text = dt.Rows[0]["Phone"].ToString(); //رقم الهاتف
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void bt_delete_click(object sender, EventArgs e)
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

                alert.Visible = true;
                lmsg.Text = "تم الحذف";

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
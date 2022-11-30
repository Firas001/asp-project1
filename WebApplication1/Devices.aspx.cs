using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;

namespace WebApplication1
{
    public partial class Devices : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                fillCustomerValues();
            }

        }

        protected void bt_add_click(object sender, EventArgs e)
        {
            try
            {

                string filepath;
                string filename = Path.GetFileName(device_name.PostedFile.FileName);
                if (filename == "" || filename == null)
                {
                    filepath = global_filepath;

                }
                else
                {
                    device_name.SaveAs(Server.MapPath("Files/" + filename));
                    filepath = "~/Files/" + filename;
                }

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("insert into Device(DeviceNum, DeviceName,customerNum,date1, cost) values(@id,@dname,@cname, @date, @cost)", con);

                cmd.Parameters.AddWithValue("@id", device_id.Text);
                cmd.Parameters.AddWithValue("@dname", filepath);
                cmd.Parameters.AddWithValue("@cname", customer_name.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@date", date_text.Text);
                cmd.Parameters.AddWithValue("@cost", cost_text.Text);
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

                string filepath;
                string filename = Path.GetFileName(device_name.PostedFile.FileName);
                if (filename == "" || filename == null)
                {
                    filepath = global_filepath;

                }
                else
                {
                    device_name.SaveAs(Server.MapPath("Files/" + filename));
                    filepath = "~/Files/" + filename;
                }

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Device SET DeviceName = IsNull(@dname, DeviceName), customerNum=@cname," +
                                                " date1=IsNull(@date, date1), cost = IsNull(@cost, cost) WHERE DeviceNum=@id", con);

                //SqlCommand cmd = new SqlCommand("UPDATE Device SET DeviceName = @dname, customerNum=@cname, date1= @date, cost =@cost WHERE DeviceNum=@id", con);

                cmd.Parameters.AddWithValue("@id", device_id.Text);
                cmd.Parameters.AddWithValue("@dname", filepath);
                cmd.Parameters.AddWithValue("@cname", customer_name.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@date", date_text.Text);
                cmd.Parameters.AddWithValue("@cost", cost_text.Text);

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
       

        protected void bt_delete_click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("delete Device where DeviceNum=@dnum", con);
                cmd.Parameters.AddWithValue("@dnum", device_id.Text);
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


        void fillCustomerValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT customerNum, customerName from customer;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                customer_name.DataSource = dt;

                customer_name.DataTextField = "customerName";
                customer_name.DataValueField = "customerNum";

                customer_name.DataBind();

            }
            catch (Exception ex)
            {

            }
        }
    }
}
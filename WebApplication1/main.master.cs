using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace WebApplication1
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void home_view_data_click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void device_data_click(object sender, EventArgs e)
        {
            Response.Redirect("Devices.aspx");
        }

        protected void customer_data_click(object sender, EventArgs e)
        {
            Response.Redirect("customers.aspx");
        }
        protected void manufacturing_companies_click(object sender, EventArgs e)
        {

        }

    }
}
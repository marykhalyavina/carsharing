using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carsharing
{
    public partial class Carsclass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            metods.carsid = 2;
            Response.Redirect("~/Aboutcars");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            metods.carsid = 3;
            Response.Redirect("~/Aboutcars");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            metods.carsid = 4;
            Response.Redirect("~/Aboutcars");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            metods.carsid = 5;
            Response.Redirect("~/Aboutcars");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            metods.carsid = 6;
            Response.Redirect("~/Aboutcars");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            metods.carsid = 8;
            Response.Redirect("~/Aboutcars");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            metods.carsid = 9;
            Response.Redirect("~/Aboutcars");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            metods.carsid = 11;
            Response.Redirect("~/Aboutcars");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            metods.carsid = 12;
            Response.Redirect("~/Aboutcars");
        }
    }
}
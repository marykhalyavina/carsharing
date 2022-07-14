using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using System.Data;
using Devart.Data.PostgreSql;
using System.Configuration;

namespace carsharing
{
    public partial class Revervedcar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NpgsqlConnection conn = new NpgsqlConnection("Server = 127.0.0.1; User Id = postgres; Password = 5827; Port = 5432; Database = carsharing; ");
            conn.Open();
            NpgsqlCommand comm = new NpgsqlCommand();
            comm.Connection = conn;
            comm.CommandType = CommandType.Text;
            comm.CommandText = "SELECT numbers, brand, colour, class, fuels, fuels_level, years_of_release, cars_drive, transmission, location FROM carsh.cars c where idcars=" + Convert.ToString(metods.mycarsid);
            NpgsqlDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = Convert.ToString(dr[0]);
                Label2.Text = Convert.ToString(dr[1]);
                Label3.Text = Convert.ToString(dr[2]);
                Label4.Text = Convert.ToString(dr[3]);
                Label5.Text = Convert.ToString(dr[4]);
                Label6.Text = Convert.ToString(dr[5]);
                Label7.Text = Convert.ToString(dr[6]);
                Label8.Text = Convert.ToString(metods.t);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            metods.mycarsid = -1;
            Response.Redirect("~/Carsclass");
        }
    }
}
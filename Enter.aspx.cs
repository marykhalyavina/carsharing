using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BC = BCrypt.Net.BCrypt;
using Npgsql;
using System.Data;
using Devart.Data.PostgreSql;
using System.Configuration;

namespace carsharing
{
    public partial class Enter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            bool b = false;
            string telephone_number11, password_hash="";
            NpgsqlConnection conn = new NpgsqlConnection("Server = 127.0.0.1; User Id = postgres; Password = 5827; Port = 5432; Database = carsharing; ");
            conn.Open();
            NpgsqlCommand comm = new NpgsqlCommand();
            comm.Connection = conn;
            comm.CommandType = CommandType.Text;
            comm.CommandText = "SELECT iduser, telephone_number, psw_hash, role FROM carsh.users";;
            NpgsqlDataReader dr = comm.ExecuteReader();
            while (dr.Read())
            {
                telephone_number11 = dr[1].ToString();
                password_hash = dr[2].ToString();
                if ((telephone_number.Text == telephone_number11))
                {
                    if (BCrypt.Net.BCrypt.Verify(Convert.ToString(psw.Text), password_hash))
                    {
                        metods.iduser = Convert.ToInt32(dr[0]);
                        metods.role = Convert.ToString(dr[3]);
                        metods.telephone_number = Convert.ToString(dr[1]);
                        Response.Redirect("~/Carsclass");
                        b = true;
                    }
                    else
                    {
                        Label3.Text = "Ошибка авторизации.Неверный пароль.";
                        b = true;
                    }
                }
                telephone_number11 = "";
                password_hash = "";
            }
            if (!b)
            {
                Label3.Text = "Ошибка авторизации. Пользователь не найден.";
            }
        }
    }
}
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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool b = false;
            string telephone_number11;
            if ((telephone_number.Text == "") || (psw.Text == ""))
                Label3.Text = "Ошибка регистрации.Данные не заплнены";
            else
            {
                NpgsqlConnection connect = new NpgsqlConnection("Server = 127.0.0.1; User Id = postgres; Password = 5827; Port = 5432; Database = carsharing; ");
                connect.Open();
                NpgsqlCommand comman = new NpgsqlCommand();
                comman.Connection = connect;
                comman.CommandType = CommandType.Text;
                comman.CommandText = "SELECT iduser, telephone_number, role FROM carsh.users";
                NpgsqlDataReader dr = comman.ExecuteReader();
                while (dr.Read())
                {
                    telephone_number11 = dr[1].ToString();

                    if (telephone_number.Text == telephone_number11)
                    {
                        Label3.Text = "Ошибка регистрации.Аккаунт с данным номером уже существует.";
                        b = true;
                    }
                    telephone_number11 = "";
                }
                connect.Close();
                if (!b)
                {
                    string connectionString = "Server=localhost;Port=5432;Database=carsharing;User Id=postgres;Password=5827;";
                    using (NpgsqlConnection conn = new NpgsqlConnection(connectionString))
                    {
                        string sql = "INSERT INTO carsh.users (telephone_number,psw_hash, role) VALUES " + "(@telephone_number,@psw_hash, 'user')";

                        using (NpgsqlCommand comm = new NpgsqlCommand(sql, conn))
                        {
                            NpgsqlParameter[] prms = new NpgsqlParameter[2];
                            prms[0] = new NpgsqlParameter("@telephone_number", NpgsqlTypes.NpgsqlDbType.Numeric);
                            prms[0].Value = Convert.ToInt64(telephone_number.Text.Trim());
                            prms[1] = new NpgsqlParameter("@psw_hash", NpgsqlTypes.NpgsqlDbType.Varchar, 200);
                            prms[1].Value = BCrypt.Net.BCrypt.HashPassword(psw.Text.Trim(), 14);
                            metods.telephone_number = Convert.ToString(telephone_number.Text.Trim());
                            metods.role = "user";
                            comm.Parameters.AddRange(prms);
                            conn.Open();
                            comm.ExecuteNonQuery();
                            conn.Close();
                            NpgsqlConnection conn1 = new NpgsqlConnection("Server = 127.0.0.1; User Id = postgres; Password = 5827; Port = 5432; Database = carsharing; ");
                            conn1.Open();
                            NpgsqlCommand comm1 = new NpgsqlCommand();
                            comm1.Connection = conn1;
                            comm1.CommandType = CommandType.Text;
                            comm1.CommandText = "SELECT iduser FROM carsh.users where telephone_number =" + metods.telephone_number;
                            NpgsqlDataReader dr1 = comm1.ExecuteReader();
                            while (dr1.Read())
                                metods.iduser = Convert.ToInt32(dr1[0]);
                            conn1.Close();
                        }
                    }
                    Response.Redirect("~/Mypage");

                }
            }


        }
    }
}
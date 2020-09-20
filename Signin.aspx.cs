using System;
using System.IO;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;
using System.Drawing;
using System.ComponentModel;


using System.Windows;
namespace IRS1
{
    public partial class Singin : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection();
            sc.ConnectionString = ("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AzureStorageEmulatorDb59;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            sc.Open();

            using (SqlCommand com = sc.CreateCommand())
            {
                String uid = TextBox4.Text;
                string pass = TextBox5.Text;
                string qry = ("Select * from sigup where userid='"+uid+ "'and pass ='" + pass + "'");
                SqlCommand cmd = new SqlCommand(qry, sc);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (TextBox4.Text == "" || TextBox5.Text == "")
                {
                    MessageBox.Show("Please Enter Username and Password");
                }
                if (sdr.Read())
                {
                   
                    Response.Redirect("Reservation.aspx");
                }
                else 
                {
                    MessageBox.Show("Password and Userid doesn't match");
                }
                
            }


        }

    }

    
}
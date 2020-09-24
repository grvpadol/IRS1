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
using System.Net;
using System.Net.Mail;


using System.Windows;
using System.Security.Cryptography.X509Certificates;

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
                String uid = TextBox4.Text.Trim();
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
                    Emailer2();
                    Session["user"] = TextBox4.Text;
                    Response.Redirect("WebForm4.aspx");
                    
                }
                else 
                {
                    MessageBox.Show("Password and Userid doesn't match");
                }
                
            }
        }

        public void Emailer2()
        {
            try
            {
                String uid = TextBox4.Text;
                MailMessage msgs = new MailMessage("internationhotel88@gmail.com", TextBox4.Text);
                msgs.Subject = "Welcome to International Restaurant";
                msgs.Body = "Sig in Successfully Plase Visit agian and again";

                SmtpClient smts = new SmtpClient();
                smts.Host = "smtp.gmail.com";
                smts.EnableSsl = true;
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "internationhotel88@gmail.com";
                ntwd.Password = "Rajaji@88";
                smts.UseDefaultCredentials = true;
                smts.Credentials = ntwd;
                smts.Port = 587;
                smts.Send(msgs);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace);
            }
        }
    }

    
}
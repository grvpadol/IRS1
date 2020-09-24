
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;
using System.Windows.Forms;
using System.ComponentModel;

namespace IRS1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        
        static Int32 bookingid;
        static String startdate;
        static String endddate;






        protected void Page_Load(object sender, EventArgs e)
        {
            
            TextBox1.Text = (String)Session["user"];
            if (!IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Now.Date;
            }
        }

        public void Button1Click(object sender, EventArgs e)
        {
            startdate = Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + "-" +
                Calendar1.SelectedDate.Year + " " + DropDownList1.Text;
            endddate = Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + "-" +
               Calendar1.SelectedDate.Year + " " + DropDownList2.Text;
            // User define Method
            findAvialableTable();
            RadioButtonList1.Visible = true;

        }
        private void findAvialableTable()
        {
            SqlConnection sc = new SqlConnection();
            sc.ConnectionString = ("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AzureStorageEmulatorDb59;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            sc.Open();
            String myquery = "Select DISTINCT tableno from ReservationTest where((dtstart between '" + startdate + "' and '" +
                endddate + "') or (dtend between '" + startdate + "' and '" + endddate + "'))";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = sc;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //clear radio item
                Label4.Text = "Available Table are Given Below";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    RadioButtonList1.Items.Remove(RadioButtonList1.Items.FindByValue(dr["tableno"].ToString()));
                }
                if (RadioButtonList1.Items.Count == 0)
                {
                    Label4.Text = "No Table Available to Book";
                }

            }
            else
            {
                Label4.Text = "Available Table are Given Below";

            }
            sc.Close();


        }
        //User define method
        public void GenerateBookingID()
        {
            string mycon = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AzureStorageEmulatorDb59;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select bookingid from ReservationTest";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                bookingid = 50001;

            }
            else
            {
                string mycon1 = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AzureStorageEmulatorDb59;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
                SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select max(bookingid) from ReservationTest";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);


                bookingid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());

                bookingid = bookingid + 1;
                scon1.Close();
            }
        }
        public void Button2Click(object sender, EventArgs e)
        {
           

            GenerateBookingID();
            SqlConnection sc = new SqlConnection();
            sc.ConnectionString = ("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AzureStorageEmulatorDb59;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            sc.Open();
            using (SqlCommand com = sc.CreateCommand())
            {

                com.CommandText = "insert into ReservationTest(bookingid,tableno,customername,totalperson,dtstart,dtend) " +
                    "values(  @bookingid,@RadioButtonList1,@TextBox1,@TextBox2,@startdate,@endddate)";
                com.Parameters.Add("@bookingid", SqlDbType.BigInt).Value = bookingid;
                com.Parameters.Add("@RadioButtonList1", SqlDbType.VarChar, 255);

                com.Parameters["@RadioButtonList1"].Value = RadioButtonList1.SelectedValue;

                com.Parameters.Add("@TextBox1", SqlDbType.VarChar, 255).Value = Session["user"];
                com.Parameters.Add("@TextBox2", SqlDbType.VarChar, 255).Value = TextBox2.Text;
                com.Parameters.Add("@startdate", SqlDbType.DateTime).Value = startdate;
                com.Parameters.Add("@endddate", SqlDbType.DateTime).Value = endddate;
                com.ExecuteNonQuery();
                Emailer();
                Label4.Text = "Booking ID " + bookingid + RadioButtonList1.SelectedItem.Text +
                    " Has Been Booked From " + startdate + " to " + endddate;
            }
        }
        public void Emailer()
        {
            try
            {
                MailMessage msg = new MailMessage("internationhotel88@gmail.com", TextBox1.Text);
                msg.Subject = "Reservation in International Restaurant";
                msg.Body = "Reservation is Successfully, your Booking ID is " + bookingid + RadioButtonList1.SelectedItem.Text +
                            "Has Been Booked From " + startdate + " to " + endddate;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                smt.EnableSsl = true;
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "internationhotel88@gmail.com";
                ntwd.Password = "Rajaji@88";

                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;


                smt.Send(msg);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.StackTrace);
            }
        }

        public void DropDownList2SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void DropDownList1SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        public void TextBox2TextChanged(object sender, EventArgs e)
        {

        }
        public void TextBox1TextChanged(object sender, EventArgs e)
        {
           /* showdata()*/;
            //TextBox1.Text = Label5.Text;
           
        }
      
        //public void showdata()
        //{
        //    SqlConnection scs = new SqlConnection();
        //    scs.ConnectionString = ("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AzureStorageEmulatorDb59;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        //    scs.Open();

        //    using (SqlCommand com = scs.CreateCommand())
        //    {
        //        string qry = ("Select * from sigup where userid='" + Session["user"] + "'");
        //        SqlCommand cmd = new SqlCommand(qry, scs);
        //        SqlDataReader sdr = cmd.ExecuteReader();
        //        //Label5.Text = qry;


        //    }
        //} 
    }
}
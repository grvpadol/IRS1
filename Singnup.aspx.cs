using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;
namespace IRS1
{
    public partial class Singnup : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection();
            //SqlCommand com = new SqlCommand();
            sc.ConnectionString = ("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AzureStorageEmulatorDb59;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            sc.Open();
            
            using (SqlCommand com = sc.CreateCommand())
            {

                bool Check = IsValid();


                com.CommandText = "Insert into sigup(LastName,FirstName,Address,City,userid,pass,ContactNumber) values(@LastName,@FirstName,@Address,@City,@Userid,@pass,@ContactNum )";
                if (Check)
                {
                    if (userName1.Text == "" || Password.Text == "" || RenterPass.Text == "" || CellNumber.Text == "" || City.Text == "" || Address.Text == "" || FirstName.Text == "" || LastName.Text == "")
                    {
                        MessageBox.Show("Please Enter all the Informations");
                    }
                    if (Password.Text != RenterPass.Text)
                    {
                        MessageBox.Show("Password is no matched");
                    }
                    else
                    {
                        com.Parameters.Add("@LastName", SqlDbType.VarChar, 255).Value = LastName.Text;
                        com.Parameters.Add("@FirstName", SqlDbType.VarChar, 255).Value = FirstName.Text;
                        com.Parameters.Add("@Userid", SqlDbType.VarChar, 255).Value = userName1.Text;
                        com.Parameters.Add("@pass", SqlDbType.VarChar, 255).Value = Password.Text;
                        com.Parameters.Add("@ContactNum", SqlDbType.VarChar, 10).Value = CellNumber.Text;
                        com.Parameters.Add("@Address", SqlDbType.VarChar, 255).Value = Address.Text;
                        com.Parameters.Add("@City", SqlDbType.VarChar, 255).Value = City.Text;

                        com.ExecuteNonQuery();
                        Response.Redirect("Signin.aspx");


                    }
                }
            }

        }
        private bool IsValid()
        {
            bool exists = false;
            SqlConnection sc = new SqlConnection();
            sc.ConnectionString = ("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AzureStorageEmulatorDb59;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            sc.Open();
            SqlCommand cmd = new SqlCommand("Select count(*) from sigup where userid=@Userid", sc);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Userid", userName1.Text);
            exists = (int)cmd.ExecuteScalar() > 0;
            if (exists)
            {
                MessageBox.Show("Useralready exists");
                return false;

            }
            return true;

        }
    }
}
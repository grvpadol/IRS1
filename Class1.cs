using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
namespace IRS1
{
    public class Class1
    {
        MySqlConnection connectionstring = new MySqlConnection("server=localhost;user id=root;database=ir");
        public void OpenConnectio()
        {
            connectionstring.Open();
        }
        
        public DataTable reavalue()
        {
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter("Select * from signin",connectionstring);
            da.Fill(dt);
            return dt;
        }
        public void CloseConnectio()
        {
            connectionstring.Close();
        }
        
    }
}
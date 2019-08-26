using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace _26_08
{
    public partial class WebForm1 : System.Web.UI.Page
    {   

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=LAPTOP-URGA7AI6\\SQLEXPRESS;Initial Catalog=data;User Id=shubham;password=Sanzu143";
            SqlConnection sqlcon = new SqlConnection(connectionString);
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = sqlcon;
            string query = "insert into StudentData (name,email,class,password,age) values ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtClass.Text + "','" + pass.Text + "',"+age.Text+")";
            cmd.CommandText = query;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            Console.WriteLine("hello");
            txtName.Text = "";
            txtClass.Text = "";
            txtEmail.Text = "";
            pass.Text = "";
            age.Text = "";
        }
    }
}
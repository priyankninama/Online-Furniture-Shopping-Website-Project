using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\170130107053\Online_Furniture_Shopping\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed18_Click(object sender, EventArgs e)
    {
      
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = "Images/" + FileUpload1.FileName;
           
            con.Open();
            cmd = new SqlCommand("insert into registration values(@Fname,@Lname,@Email,@Gender,@Date,@Address,@Phone,@Password,@image)", con);
            cmd.Parameters.AddWithValue("@Fname", t1.Text);
            cmd.Parameters.AddWithValue("@Lname", t2.Text);
            cmd.Parameters.AddWithValue("@Email", t3.Text);
            cmd.Parameters.AddWithValue("@Gender", D1.Text);
            cmd.Parameters.AddWithValue("@Date", t4.Text);
            cmd.Parameters.AddWithValue("@Address", t5.Text);
            cmd.Parameters.AddWithValue("@Phone", t6.Text);
            cmd.Parameters.AddWithValue("@Password", t7.Text);
            cmd.Parameters.AddWithValue("@image", filepath);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Registerd Successfully";
            Label1.ForeColor = System.Drawing.Color.Green;

            Response.Redirect("Login.aspx");
    }
}
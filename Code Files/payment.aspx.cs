using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Successfull : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"]== null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("PlaceOrder.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\170130107053\Online_Furniture_Shopping\Database.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Carddetails values(@cardno,@name,@expiry,@cvv)", con);
        cmd.Parameters.AddWithValue("@cardno", TextBox3.Text);
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@expiry", TextBox4.Text);
        cmd.Parameters.AddWithValue("@cvv", TextBox5.Text);     
        cmd.ExecuteNonQuery();
        con.Close();
       
        Response.Write("<script>Alert('Paid succesfully');</script>");
        Response.Redirect("Successfull.aspx");
    }
}
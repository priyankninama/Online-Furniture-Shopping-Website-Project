using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\170130107053\Online_Furniture_Shopping\Database.mdf;Integrated Security=True;Connect Timeout=30");

    protected void Page_Load(object sender, EventArgs e)
    {
        if(! IsPostBack)
        {
            if(Session["username"] !=null)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }

    protected void Unnamed5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("Select * from registration where Email='" + t1.Text + "' and Password ='" + t2.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (t1.Text=="Priyank" & t2.Text=="1478")
        {
            Label1.Text = " Admin Login Successfully";
            Label1.ForeColor = System.Drawing.Color.Green;
            Session["admin"] = t1.Text;
            Response.Redirect("Admin.aspx");
           // Response.Redirect("Default.aspx");

        }
        else if (dt.Rows.Count == 1)
        {
            Session["username"] = t1.Text;           
            Response.Redirect("Default.aspx");

        }
        else
        {
            Label1.Text = "Login Unsuccessfull. Maybe password or username wrong. try again";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
   
}

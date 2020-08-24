using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["admin"] != null)
            {
                 Label2.Text = "Hello " + Session["admin"].ToString();                
            }
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection cv = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\170130107053\Online_Furniture_Shopping\Database.mdf;Integrated Security=True;Connect Timeout=30");
        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = "Images/" + FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
            cv.Open();
            SqlCommand cmd = new SqlCommand("insert into Product1 values(@ProductId, @Pname, @pdesc, @pimage, @pprice)", cv);
            cmd.Parameters.AddWithValue("@ProductId", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Pname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pdesc", TextBox4.Text);
            cmd.Parameters.AddWithValue("@pimage", filepath);
            cmd.Parameters.AddWithValue("@pprice", TextBox5.Text);                    
            cmd.ExecuteNonQuery();
            cv.Close();
            Label1.Text = "Product Added successfully";
            Label1.ForeColor = System.Drawing.Color.Green;

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
        Label1.Text = "Logged out successfully";
    }
}
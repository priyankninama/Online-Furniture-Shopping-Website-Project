using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cc = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\170130107053\Online_Furniture_Shopping\Database.mdf;Integrated Security=True;Connect Timeout=30");

        if (Session["username"] !=null)
        {
            Label1.Text = "Hello " + Session["username"].ToString();          
            Button2.Visible = true;
        }
        else
        {
            Label1.Text = "Hello Guest";
            Button2.Visible = false;
        }
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {

            Label2.Text = dt.Rows.Count.ToString();
        }
        else
        {
            Label2.Text = "0";

        }
    }

   
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection cc = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\170130107053\Online_Furniture_Shopping\Database.mdf;Integrated Security=True;Connect Timeout=30");
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 where (Pname like '%" + TextBox1.Text + "%')or (ProductId like '%" + TextBox1.Text + "%')", cc);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "addtocart")
        {

            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

        }
        if (e.CommandName == "viewdetails")
        {
            Response.Redirect("ViewDetails.aspx?id=" + e.CommandArgument.ToString());
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("AddToCart.aspx");
        }
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
        Label1.Text = "Logged out successfully";
    }
}
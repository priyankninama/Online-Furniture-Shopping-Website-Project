using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddToCart : System.Web.UI.Page
{
    SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\Desktop\170130107053\Online_Furniture_Shopping\Database.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
            }

            Session["addtocart"] = "false";
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("ProductId");
            dt.Columns.Add("Pname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("pprice");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("pimage");


            if (Request.QueryString["id"] != null)
            {
                if (Session["buyitems"] == null)
                {

                    dr = dt.NewRow();
                    
                    String myquery = "select * from Product1 where ProductId=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["ProductId"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                    dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                    dr["pimage"] = ds.Tables[0].Rows[0]["pimage"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["pprice"] = ds.Tables[0].Rows[0]["pprice"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                    int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * Quantity;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    scon.Open();
                    SqlCommand cc = new SqlCommand("Insert into SavedCartDetail values('" + dr["sno"] + "', '" + dr["ProductId"] + "', '" + dr["Pname"] + "', '" + dr["pimage"] + "', '" + dr["quantity"] + "', '" + dr["pprice"] + "','" + Session["username"].ToString() + "')");
                    cmd.ExecuteNonQuery();
                    scon.Close();

                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    Button1.Enabled = true;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                   
                    String myquery = "select * from Product1 where ProductId=" + Request.QueryString["id"];
                    cmd.CommandText = myquery;
                    cmd.Connection = scon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["ProductId"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                    dr["Pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                    dr["pimage"] = ds.Tables[0].Rows[0]["pimage"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["pprice"] = ds.Tables[0].Rows[0]["pprice"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                    int Quantity = Convert.ToInt32(Request.QueryString["quantity"].ToString());
                    int totalprice = price * Quantity;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    scon.Open();
                    SqlCommand cc = new SqlCommand("Insert into SavedCartDetail values('" + dr["sno"] + "', '" + dr["ProductId"] + "', '" + dr["Pname"] + "', '" + dr["pimage"] + "', '" + dr["quantity"] + "', '" + dr["pprice"] + "','" + Session["username"].ToString() + "')");
                    cmd.ExecuteNonQuery();
                    scon.Close();

                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }
            }
        }
        if(GridView1.Rows.Count.ToString() =="0")
        {
            Button3.Visible = false;
            Button1.Enabled = false;
            Button1.Text = "Your Cart is empty";
        }
        else
        {
            Button3.Visible = true;
            Button1.Enabled = true;
        }
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);
            TableCell prID = GridView1.Rows[e.RowIndex].Cells[1];

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();               
                //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }
        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("AddToCart.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("EditOrder.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PlaceOrder.aspx");
    }

    public void clearCart()
    { 
        scon.Open();
       
        scon.Close();
        Response.Redirect("AddToCart.aspx");
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {

        Session["buyitems"] = null;
        clearCart();
    }
}
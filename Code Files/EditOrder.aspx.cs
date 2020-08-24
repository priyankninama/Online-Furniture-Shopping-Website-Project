using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class EditOrder : System.Web.UI.Page
{
    DataTable ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        if (IsPostBack)
        {
           
        }
        else
        {
            if (Request.QueryString["sno"] != null)
            {
                ds = (DataTable)Session["buyitems"];


                for (int i = 0; i <= ds.Rows.Count - 1; i++)
                {
                    int sr;
                    int sr1;
                    sr = Convert.ToInt32(ds.Rows[i]["sno"].ToString());
                    Label1.Text = Request.QueryString["sno"];
                    Label2.Text = sr.ToString();
                    sr1 = Convert.ToInt32(Label1.Text);
                    //sr1 = sr1 + 1;


                    if (sr == sr1)
                    {
                        Label1.Text = ds.Rows[i]["sno"].ToString();
                        Label2.Text = ds.Rows[i]["ProductId"].ToString();
                        Label3.Text = ds.Rows[i]["Pname"].ToString();
                        Label4.Text = ds.Rows[i]["pprice"].ToString();
                        DropDownList1.Text = ds.Rows[i]["quantity"].ToString();
                        Label6.Text = ds.Rows[i]["totalprice"].ToString();
                        break;
                    }
                }
            }
            else
            {
            }

        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int q;
        q = Convert.ToInt32(DropDownList1.Text);
        int cost;
        cost = Convert.ToInt32(Label4.Text);
        int totalcost;
        totalcost = cost * q;
        Label6.Text = totalcost.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ds = (DataTable)Session["buyitems"];


        for (int i = 0; i <= ds.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            sr = Convert.ToInt32(ds.Rows[i]["sno"].ToString());

            sr1 = Convert.ToInt32(Label1.Text);



            if (sr == sr1)
            {
                ds.Rows[i]["sno"] = Label1.Text;
                ds.Rows[i]["ProductId"] = Label2.Text;
                ds.Rows[i]["Pname"] = Label3.Text;
                ds.Rows[i]["pprice"] = Label4.Text;
                ds.Rows[i]["quantity"] = DropDownList1.Text;
                ds.Rows[i]["totalprice"] = Label6.Text;
                ds.AcceptChanges();

                break;

            }
        }
        Response.Redirect("AddToCart.aspx");
    }

}

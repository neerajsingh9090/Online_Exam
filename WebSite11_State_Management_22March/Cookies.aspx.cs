using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["user"].Value = TextBox1.Text;
        Response.Cookies["email"].Value = TextBox2.Text;
        Response.Cookies["user"].Expires = DateTime.Now.AddDays(2);
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        Response.Write("cookies set successfully in browser..");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = Request.Cookies["user"].Value;
        Label2.Text = Request.Cookies["email"].Value;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("cookies2.aspx");
    }
}
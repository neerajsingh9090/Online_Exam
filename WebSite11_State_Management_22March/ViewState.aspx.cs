using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewState : System.Web.UI.Page
{
    string a, b;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ViewState["user"] = TextBox1.Text;
        ViewState["email"] = TextBox2.Text;
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = ViewState["user"].ToString();
        TextBox2.Text = ViewState["email"].ToString() ;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewState2.aspx");
    }
}
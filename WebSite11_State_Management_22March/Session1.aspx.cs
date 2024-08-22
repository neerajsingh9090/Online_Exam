using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text.Equals("admin") && TextBox2.Text.Equals("123"))
        {
            Application["id"] = TextBox1.Text;
            Response.Redirect("Session2.aspx");
        }
        else
        {
            Response.Write("id and pwd are wrong..!!!");
        }

    }
}
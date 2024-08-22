using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Application["id"]!=null)
            {
                Label1.Text = Application["id"].ToString();
            }
            else
            {
                Response.Redirect("Session1.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Application["id"] != null)
        {
            Application["id"] = null;
            Response.Redirect("Session1.aspx");
        }
    }
}
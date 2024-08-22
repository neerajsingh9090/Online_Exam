using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class score : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["id"] != null || Session["cname"] != null)
            {
                lbl_id.Text = Session["id"].ToString();
                lbl_cname.Text = Session["cname"].ToString();
                lbl_score.Text ="My Final Score Is: "+ Session["score"].ToString();
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}
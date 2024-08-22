using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["id"] != null)
            {
                lbl_id.Text = Session["id"].ToString();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["cid"] = DropDownList1.SelectedValue;
        Session["cname"] = DropDownList1.SelectedItem.Text;
        //Response.Write(DropDownList1.SelectedValue);
        Response.Redirect("question.aspx");
    }
}
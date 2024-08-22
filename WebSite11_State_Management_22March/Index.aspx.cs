using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void login_btn_Click(object sender, EventArgs e)
    {
        try
        {
            string id, pwd;
            id = textid.Text;
            pwd = textpwd.Text;
            string login_query = "select * from student where s_id="+id+" and s_pwd='"+pwd+"'";
            SqlCommand cmd1 = new SqlCommand(login_query, con);
            con.Open();
            SqlDataReader dr =  cmd1.ExecuteReader();
            if(dr.Read())
            {
                //lbl_error.Text = "Success";
                Session["id"] = id;
                Response.Redirect("welcome.aspx");
            }
            else
            {
                lbl_error.Text = "ID OR PWD MISMATCHED...!!!";
            }

        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
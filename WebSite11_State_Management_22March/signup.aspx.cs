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

public partial class signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        try
        {
            string s_id, s_name, s_pwd, s_qualification, s_email, s_age, s_city, s_gender;
            s_name = textname.Text;
            s_pwd = textpwd.Text;
            s_qualification = ddl_qualification.SelectedItem.Text;
            s_email = textemail.Text;
            s_age = textage.Text;
            s_city = ddl_city.SelectedItem.Text;
            s_gender = RadioButtonList1.SelectedItem.Text;

            string query_insert = "insert into student(s_name,s_pwd,s_qualification,s_email,s_age,s_city,s_gender)values('"+s_name+"','"+s_pwd+"','"+s_qualification+"','"+s_email+"',"+s_age+",'"+s_city+"','"+s_gender+"')";
            SqlCommand cmd1 = new SqlCommand(query_insert,con);
            con.Open();
           int i= cmd1.ExecuteNonQuery();
            if(i>0)
            {
                con.Close();
                string select_query = "select s_id from student where s_email = '"+s_email+"'";
                SqlCommand cmd2 = new SqlCommand(select_query, con);
                con.Open();
               SqlDataReader dr =  cmd2.ExecuteReader();
                if(dr.Read())
                {
                    s_id = dr["s_id"].ToString();
                    lbl_msg.Text = "ID Generated Now you may logIN  : ";
                    lbl_id.Text = s_id;
                    //Response.Write(s_id);
                }
            }
            else
            {
                Response.Write("record not submitted");
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
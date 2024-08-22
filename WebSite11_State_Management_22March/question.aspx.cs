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

public partial class question : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Session["id"]!=null || Session["cname"]!=null)
            {
                lbl_id.Text = Session["id"].ToString();
                lbl_cname.Text = Session["cname"].ToString();

                try
                {
                    string cid = Session["cid"].ToString();
                    string qid = lbl_qid.Text;
                    string select_question = "select * from question where cid ='" + cid + "' and qid='" + qid + "'";
                    SqlCommand cmd1 = new SqlCommand(select_question, con);
                    con.Open();
                    SqlDataReader dr = cmd1.ExecuteReader();
                    if (dr.Read())
                    {
                        lbl_qid.Text = dr["qid"].ToString();
                        lbl_qname.Text = dr["qname"].ToString();
                        RadioButton1.Text = dr["q_a"].ToString();
                        RadioButton2.Text = dr["q_b"].ToString();
                        RadioButton3.Text = dr["q_c"].ToString();
                        RadioButton4.Text = dr["q_d"].ToString();
                        HiddenField1.Value = dr["q_ans"].ToString();
                    }
                    else
                    {
                        Response.Write("data not exist..!!!");
                    }
                }
                catch (Exception ex) {
                    Response.Write(ex.Message);
                }
                
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["score"] = lbl_score.Text;
        Response.Redirect("score.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        int i;
        i = Convert.ToInt32(lbl_qid.Text);
        i++;
        lbl_qid.Text = i.ToString();

       

        if (lbl_qid.Text.Equals("10"))
        {
            Button5.Enabled = false;
        }


        try
        {
            string cid = Session["cid"].ToString();
            string qid = lbl_qid.Text;
            string select_question = "select * from question where cid ='" + cid + "' and qid='" + qid + "'";
            SqlCommand cmd1 = new SqlCommand(select_question, con);
            con.Open();
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                lbl_qid.Text = dr["qid"].ToString();
                lbl_qname.Text = dr["qname"].ToString();
                RadioButton1.Text = dr["q_a"].ToString();
                RadioButton2.Text = dr["q_b"].ToString();
                RadioButton3.Text = dr["q_c"].ToString();
                RadioButton4.Text = dr["q_d"].ToString();
                HiddenField1.Value = dr["q_ans"].ToString();
                lbl_title.Visible = false;
                lbl_title.Text = string.Empty;
                lbl_ans.Visible = false;
                lbl_ans.Text = string.Empty;
                Button4.Enabled = true;
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                RadioButton4.Checked = false;

            }
            else
            {
                Response.Write("data not exist..!!!");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string x = string.Empty;
        if (RadioButton1.Checked)
        {
            x = RadioButton1.Text;
        }
        else if (RadioButton2.Checked)
        {
            x = RadioButton2.Text;
        }
        else if (RadioButton3.Checked)
        {
            x = RadioButton3.Text;
        }
        else if (RadioButton4.Checked)
        {
            x = RadioButton4.Text;
        }

        if (x.Equals(HiddenField1.Value))
        {
            Response.Write("OK");
            int counter = Convert.ToInt32(lbl_score.Text);
            lbl_score.Text = (counter + 1).ToString();
        }
        else
        {
            Response.Write("Not Ok");
        }

        lbl_title.Visible = true;
        lbl_title.Text = "Ans: ";
        lbl_ans.Visible = true;
        lbl_ans.Text = HiddenField1.Value;

        Button4.Enabled = false;

    }
}
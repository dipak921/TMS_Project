using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace TMS_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetContact()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SubjectDropDownList.Items.Clear();
            MessageTextBox.Text = "";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spContact_Insert";
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", MessageTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if(a > 0)
            {
                //Response.Write("<script>alert('From has be submited Succssfully.')</script>");
                //Response.Write("<script>SuccessConteact();</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessConteact();", true);
                ResetContact();
            }
            else
            {
                //Response.Write("<script>alert('From insertion Fail.')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorConteact();", true);

            }
            con.Close();

        }
    }
}
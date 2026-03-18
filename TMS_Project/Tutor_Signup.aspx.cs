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
    public partial class Tutor_Singup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetControls()
        {
            NameTextBox.Text = "";
            SurNameTextBox.Text = "";
            AgeTextBox.Text = "";
            EmailTextBox.Text = "";
            ConutryTextBox.Text = "";
            CityTextBox.Text = "";
            AddressTextBox.Text = "";
            DegreeTextBox.Text = "";  
            ContactTextBox.Text = "";
            UserNameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";

            GenderDropDownList.ClearSelection();
            MaritalStatusDropDownList.ClearSelection();
            QualificationDropDownList.ClearSelection();
            ExperienceDropDownList.ClearSelection();
        }

        protected void TutorSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {
                string query = "insert into tutor_signup values(@name,@surname,@gender,@age,@email,@status,@country,@city,@address,@qualification,@degree,@experience,@contactno,@username,@password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurNameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@status", MaritalStatusDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", ConutryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@qualification", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@username", UserNameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();

                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    //Response.Write("<script>alert('You Have Registered Successfully ')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \" Success!\",\r\n  text: \" You Have Registered Successfully    \",\r\n  icon: \"success\"\r\n});", true);
                    ResetControls();
                }
                else
                {
                    //Response.Write("<script>alert('Resgiesteration Failed..Try Another Username')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({\r\n  title: \" Failure!\",\r\n  text: \" Resgiesteration Failed..Try Another Username   \",\r\n  icon: \"faild\"\r\n});", true);

                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup",
                    "Swal.fire({title: 'Failure!', text: 'Registration Failed.. " + UserNameTextBox.Text + " already exists.', icon: 'error'});",
                    true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup",
                    "Swal.fire({title: 'Failure!', text: 'Registration Failed.. ', icon: 'error'});",
                    true);
                }
            }
            finally
            {
                con.Close();
            }

        }
    }
}
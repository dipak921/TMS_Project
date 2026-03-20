using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.Tutor
{
    public partial class View_Students : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                Response.Redirect("~/Tutor_Login.aspx");
            }
            if (!IsPostBack)
            {
                BindRepeater();
            }

        }

        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);

            Repeater1.DataSource = data;
            Repeater1.DataBind();
        }
    }
}
using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Day_5_6
{

    public partial class Exercise7 : System.Web.UI.Page
    {
        ConstantMessages mess = new ConstantMessages();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        public void BindData()
        {
            try
            {
                string cstring = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                MySqlConnection conn = new MySqlConnection(cstring);
                MySqlCommand cmd = new MySqlCommand(mess.strEmpDL, conn);
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DDL.DataSource = dt;
                DDL.DataTextField = "FirstName";
                DDL.DataValueField = "FirstName";
                DDL.DataBind();
                Cache.Insert("EmployeeName", dt, null, DateTime.Now.AddSeconds(15), System.Web.Caching.Cache.NoSlidingExpiration);
               // Cache.Insert("EmployeeName", cmd.ToString(),
                    //        null, DateTime.Now.AddSeconds(15),
                       //     System.Web.Caching.Cache.NoSlidingExpiration);
            }
            catch (Exception)
            {
                Response.Write("Error Occured");

            }
        }
        protected void BtnDetails_Click(object sender, EventArgs e)
        {

            try
            {
                mess = new ConstantMessages();
                Response.Redirect(mess.strCache_Ex7Page, false);
            }
            catch (Exception)
            {
                mess = new ConstantMessages();
               // Response.Redirect(mess.strErrorPage, false);
            }


        }
    }
}

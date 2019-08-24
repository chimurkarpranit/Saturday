using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Day_5_6
{
    public partial class Cache_Ex7 : System.Web.UI.Page
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
                if (Cache["EmployeeName"] == null)
                {
                    LblCacheStatus.Visible = true;
                }
                else
                {
                    DdlEmployee.DataSource = Cache["EmployeeName"];
                    DdlEmployee.DataValueField = "FirstName";
                    DdlEmployee.DataTextField = "FirstName";
                    DdlEmployee.DataBind();
                }
            }
            catch (Exception)
            {
                mess = new ConstantMessages();
                //   Response.Redirect(mess.strErrorPage, false);
            }
        }
        protected void BtnDetails_Click(object sender, EventArgs e)
        {
            try
            {
                if (DdlEmployee.SelectedValue == "0")
                {
                   
                    ClientScript.RegisterStartupScript(this.GetType(), "msgbox", "alert('" + mess.strAlertEmployeeName + "');", true);
                }
                else
                {
                    string cstring = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
                    MySqlConnection conn = new MySqlConnection(cstring);
                    MySqlCommand cmd = new MySqlCommand(mess.strDL + DdlEmployee.SelectedValue + "'", conn);
                    MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gvEmployee.DataSource = dt;
                    gvEmployee.DataBind();
                }

            }
            catch (Exception ex)
            {
                mess = new ConstantMessages();
                Response.Write(ex);
            }
        }
    }
}
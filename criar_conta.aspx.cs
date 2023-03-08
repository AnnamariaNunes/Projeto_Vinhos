using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Final_Vinho
{
    public partial class criar_conta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string data = DateTime.Now.AddYears(-18).ToShortDateString();
                ValidateBirthDate.ErrorMessage =
                "Defina data igual ou anterior a " + data;
                ValidateBirthDate.Type = ValidationDataType.Date;
                ValidateBirthDate.Operator = ValidationCompareOperator.LessThanEqual;
                ValidateBirthDate.ValueToCompare = data;
            }
        }

        protected void Btnconta_Click(object sender, EventArgs e)
        {
            //Criar Conta
            Membership.CreateUser(Username.Text, Password.Text, Email.Text);
            //Obter o UserId
            MembershipUser user = Membership.GetUser(Username.Text);
            object user_id = user.ProviderUserKey;

            Roles.AddUserToRole(Username.Text, "utilizador");

            //Criar Utilizadores Vinhos
            SqlConnection connection = new SqlConnection(
                ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "INSERT Utilizador VALUES(@user_id, @nome, @email, @data)";

            command.Parameters.AddWithValue("@nome", Name.Text);
            command.Parameters.AddWithValue("@email", Email.Text);
            command.Parameters.AddWithValue("@data", DateTime.Parse(BirthDate.Text));
            command.Parameters.AddWithValue("@user_id", Name.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Btnconta_Click1(object sender, EventArgs e)
        {

        }
    }
}
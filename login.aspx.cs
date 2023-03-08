using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Final_Vinho
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load_(object sender, EventArgs e)
        {



        }
        protected void loginUtilizador_LoggedIn(object sender, EventArgs e)
        {
            MembershipUser user = Membership.GetUser(loginUtil.UserName);

            if (Roles.IsUserInRole(loginUtil.UserName, "administradores") == true)
                Response.Redirect("administradores/area_gestao.aspx");

            if (Roles.IsUserInRole(loginUtil.UserName, "utilizadores"))
            {
                Session["id_utilizador"] = user.ProviderUserKey.ToString();
                Response.Redirect("utilizadores/area_pessoal.aspx");
            }
        }
    }
}
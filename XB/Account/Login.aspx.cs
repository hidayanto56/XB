using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using XB.Controllers;

namespace XB.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectFromLoginPage(Page.User.Identity.Name, false);
            }
        }


        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            LoginControl lc = new LoginControl();
            lc.NPM = Login1.UserName;
            lc.PSD = Login1.Password;
            if (lc.Login() == "sukses")
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
            }
            else
            {
                Login1.FailureText = "Login Gagal. Periksa Username dan Password.";
            }
        }
    }
}
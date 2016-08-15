using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XB.Controllers;

namespace XB.Account
{
    public partial class ChangePass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Page.User.Identity.IsAuthenticated)
                {
                    LoginControl lc = new LoginControl();
                    lc.NPM = Page.User.Identity.Name.ToString();
                    lc.PSD = NewPassword.ToString();
                    lc.ChangePassword();
                }
            }
        }
    }
}
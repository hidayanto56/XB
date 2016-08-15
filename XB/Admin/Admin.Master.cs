using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XB.Model;

namespace XB.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                ProfileControl pc = new ProfileControl();
                pc.NPM = Page.User.Identity.Name.ToString();

                DataTable dt = pc.getUser();

                lblUser.Text = dt.Rows[0]["Nama"].ToString();
            }
        }
    }
}
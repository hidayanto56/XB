using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XB.Model;

namespace XB
{
    public partial class Web : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Page.User.Identity.IsAuthenticated)
                {
                    ProfileControl pc = new ProfileControl();
                    pc.NPM = Page.User.Identity.Name.ToString();

                    DataTable dt = pc.getUser();

                    (LoginView1.FindControl("lblUser") as Label).Text = dt.Rows[0]["Nama"].ToString();
                }
            }

        }
        protected void HomeClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
        protected void ContactClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Contact.aspx");
        }
        protected void AboutClick(object sender, EventArgs e)
        {
            Response.Redirect("~/About.aspx");
        }
    }
}
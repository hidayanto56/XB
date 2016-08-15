using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.WebControls;
using XB.Model;
using XB.Models;
using System.Web.UI.HtmlControls;

namespace XB
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MemberControl mc = new MemberControl();
                gvMember.DataSource = mc.getMember();
                gvMember.DataBind();
            }
        }
    }
}
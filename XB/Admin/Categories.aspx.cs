using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XB.Controllers;

namespace XB.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CategoryControl gc = new CategoryControl();

                gvCategory.DataSource = gc.CategoriesData();
                gvCategory.DataBind();
            }
        }
    }
}
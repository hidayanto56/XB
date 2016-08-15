using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XB.Controllers;

namespace XB
{
    public partial class KRS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KRSControl k1 = new KRSControl();
                k1.Semester = 1;
                gvKRS1.DataSource = k1.getKRSsmt();
                gvKRS1.DataBind();

                KRSControl k2 = new KRSControl();
                k2.Semester = 2;
                gvKRS2.DataSource = k2.getKRSsmt();
                gvKRS2.DataBind();

                KRSControl k3 = new KRSControl();
                k3.Semester = 3;
                gvKRS3.DataSource = k3.getKRSsmt();
                gvKRS3.DataBind();

                KRSControl k4 = new KRSControl();
                k4.Semester = 4;
                gvKRS4.DataSource = k4.getKRSsmt();
                gvKRS4.DataBind();

                KRSControl k5 = new KRSControl();
                k5.Semester = 5;
                gvKRS5.DataSource = k5.getKRSsmt();
                gvKRS5.DataBind();

                KRSControl k6 = new KRSControl();
                k6.Semester = 6;
                gvKRS6.DataSource = k6.getKRSsmt();
                gvKRS6.DataBind();

                KRSControl k7 = new KRSControl();
                k7.Semester = 7;
                gvKRS7.DataSource = k7.getKRSsmt();
                gvKRS7.DataBind();

                KRSControl k8 = new KRSControl();
                k8.Semester = 8;
                gvKRS8.DataSource = k8.getKRSsmt();
                gvKRS8.DataBind();

                
            }
        }

    }
}
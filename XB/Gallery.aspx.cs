using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XB
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //getSlides();
        }

        //[WebMethod]
        //[ScriptMethod]
        //public static Slide[] getSlides()
        //{
        //    return new Slide[]{
        //    new Slide("~/Images/Unindra-1.png","Logo","Unindra","~/Images/Unindra-1.png"),
        //    new Slide("~/Images/UNINDRA.jpg","Kampus","Kampus Unindra","~/Images/UNINDRA.jpg"),
        //    new Slide("~/Images/1429741256301.jpg","XB2013","Liburan ke Ragunan","~/Images/1429741256301.jpg")
            
        //    };
        //}

        [WebMethod]
        [ScriptMethod]
        public static Slide[] GetImages()
        {
            List<Slide> slides = new List<Slide>();
            string path = HttpContext.Current.Server.MapPath("~/Images/");
            if (path.EndsWith("\\"))
            {
                path = path.Remove(path.Length - 1);
            }
            Uri pathUri = new Uri(path, UriKind.Absolute);
            string[] files = Directory.GetFiles(path);
            foreach (string file in files)
            {
                Uri filePathUri = new Uri(file, UriKind.Absolute);
                slides.Add(new Slide
                {
                    Name = Path.GetFileNameWithoutExtension(file),
                    Description = Path.GetFileNameWithoutExtension(file) + " Description.",
                    ImagePath = pathUri.MakeRelativeUri(filePathUri).ToString()
                });
            }
            return slides.ToArray();
        }

    }
}
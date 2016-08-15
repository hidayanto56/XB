using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XB.Controllers;
using XB.Model;

namespace XB.Admin
{
    public partial class NewArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            kosongkan();
            
        }

        protected void btnPublish_Click(object sender, EventArgs e)
        {
            ProfileControl pc = new ProfileControl();
            pc.NPM = Page.User.Identity.Name.ToString();
            DataTable dt = pc.getUser();

            ArticleControl ac = new ArticleControl();
            ac.Judul = txtTitle.Text;
            //ac.Headline = txtContent.Text.Max;
            ac.Isi = txtContent.Text;
            ac.Id_Kat = Convert.ToInt32(ddlCategories.SelectedValue);
            ac.Tags = txtTags.Text;
            ac.Tanggal = DateTime.Now;
            ac.Draft = Convert.ToInt32(ddlDraft.SelectedValue);
            ac.Author = dt.Rows[0]["Nama"].ToString();

            if (AsyncFileUpload1.HasFile)
            {
                HttpPostedFile file = AsyncFileUpload1.PostedFile;
                Byte[] imgByte = new Byte[file.ContentLength];
                file.InputStream.Read(imgByte, 0, file.ContentLength);
                ac.Image = imgByte;
            }
            else
            {
                ac.Image =  new byte[0];
            }

            ac.TambahArtikel();
            kosongkan();

        }
        //protected void ddlDataBind()
        //{
        //    ArticleControl ac = new ArticleControl();
        //    ddlCategories.DataSource = ac.ddlCategoriesData();
        //    ddlCategories.DataTextField = "Category";
        //    ddlCategories.DataValueField = "Id_cat";
        //    ddlCategories.DataBind();
        //}
        public void kosongkan()
        {
            txtTitle.Text = "";
            txtTags.Text = "";
            txtContent.Text = "";
            AsyncFileUpload1.Dispose();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.Web.UI;
using XB.Controllers;
using XB.Model;
using XB.Models;

namespace XB.Admin
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ProfileControl pc = new ProfileControl();
                pc.NPM = Page.User.Identity.Name.ToString();

                DataTable dt = pc.getProfile();


                lblHeader.Text = dt.Rows[0]["Nama"].ToString().ToUpper();
                lblNPM.Text = dt.Rows[0]["NPM"].ToString();
                lblNama.Text = dt.Rows[0]["Nama"].ToString();
                lblTempat.Text = dt.Rows[0]["Tempat_Lahir"].ToString();
                lblTanggal.Text = dt.Rows[0]["Tanggal_lahir"].ToString();
                lblAlamat.Text = dt.Rows[0]["Alamat"].ToString();
                lblTelp.Text = dt.Rows[0]["Telp"].ToString();
                lblEmail.Text = dt.Rows[0]["Email"].ToString();

                if (dt.Rows[0]["foto"].Equals(null))
                {
                    Image1.ImageUrl = "../Images/Unindra-1.png"; 
                }
                else if (dt.Rows[0]["foto"] != null)
                {
                    Image1.ImageUrl = "../Handler1.ashx?nam=" + dt.Rows[0]["NPM"].ToString();
                }

                txtTempat.Text = dt.Rows[0]["Tempat_Lahir"].ToString();
                txtTanggal.Text = dt.Rows[0]["Tanggal_lahir"].ToString();
                txtAlamat.Text = dt.Rows[0]["Alamat"].ToString();
                txtTelp.Text = dt.Rows[0]["Telp"].ToString();
                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Edit(true);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Edit(false);
            AsyncFileUpload1.Dispose();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ProfileControl pc = new ProfileControl();
            pc.NPM = lblNPM.Text;
            pc.Nama = lblNama.Text;
            pc.Tempat = txtTempat.Text;
            pc.Tanggal = Convert.ToDateTime(txtTanggal.Text);
            pc.Alamat = txtAlamat.Text;
            pc.Telp = txtTelp.Text;
            pc.Email = txtEmail.Text;


            //if (AsyncFileUpload1.HasFile && AsyncFileUpload1.PostedFile != null)
            //{
            //    HttpPostedFile file = AsyncFileUpload1.PostedFile;
            //    Byte[] imgByte = new Byte[file.ContentLength];
            //    file.InputStream.Read(imgByte, 0, file.ContentLength);
            //    pc.Foto = imgByte;
            //}
            //else
            //{
            //    pc.Foto = null;
            //}
           

            pc.Update();
            Page.Response.Redirect(Request.RawUrl);
            Edit(false);

        }

        private void Edit(Boolean edit)
        {
            if (edit == true)
            {
                lblTempat.Visible = false;
                lblTanggal.Visible = false;
                lblAlamat.Visible = false;
                lblTelp.Visible = false;
                lblEmail.Visible = false;
                lblTempat.Visible = false;

                txtTempat.Visible = true;
                txtTanggal.Visible = true;
                txtAlamat.Visible = true;
                txtTelp.Visible = true;
                txtEmail.Visible = true;
                AsyncFileUpload1.Visible = true;

                btnEdit.Visible = false;
                btnCancel.Visible = true;
                btnUpdate.Visible = true;

            }
            else if (edit == false)
            {
                lblTempat.Visible = true;
                lblTanggal.Visible = true;
                lblAlamat.Visible = true;
                lblTelp.Visible = true;
                lblEmail.Visible = true;
                lblTempat.Visible = true;

                txtTempat.Visible = false;
                txtTanggal.Visible = false;
                txtAlamat.Visible = false;
                txtTelp.Visible = false;
                txtEmail.Visible = false;
                AsyncFileUpload1.Visible = false;

                btnEdit.Visible = true;
                btnCancel.Visible = false;
                btnUpdate.Visible = false;
            }
        }

        protected void AsyncFileUpload1_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
        {
            ProfileControl pc = new ProfileControl();
            pc.NPM = lblNPM.Text;
            pc.Nama = lblNama.Text;

            HttpPostedFile file = AsyncFileUpload1.PostedFile;
            Byte[] imgByte = new Byte[file.ContentLength];
            file.InputStream.Read(imgByte, 0, file.ContentLength);
            pc.Foto = imgByte;

            pc.UpdateImage();
        }

        
    }
}
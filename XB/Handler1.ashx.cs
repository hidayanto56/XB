using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using XB.Model;

namespace XB
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            ProfileControl pc = new ProfileControl();
            pc.NPM = context.Request.QueryString["nam"];

            DataTable dt = pc.getProfile();

            if (context.Request.QueryString["nam"] != null)
            {
                
                if (dt != null)
                {
                    Byte[] bytes = (Byte[])dt.Rows[0]["Foto"];
                    context.Response.Buffer = true;
                    context.Response.Charset = "";
                    context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    context.Response.ContentType = "image/jpeg";
                    context.Response.AddHeader("content-disposition", "attachment;filename=" + dt.Rows[0]["Nama"].ToString());
                    context.Response.BinaryWrite(bytes);
                    context.Response.Flush();
                    context.Response.End();
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
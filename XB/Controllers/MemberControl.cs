using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using XB.Models;

namespace XB.Model
{
    public class MemberControl : Member
    {
        public DataTable getMember()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select * from dbo.Mahasiswa");
                DataTable dt = kon.ExecuteReader();
                kon.Close();

                return dt;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}
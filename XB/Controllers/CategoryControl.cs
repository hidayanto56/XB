using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using XB.Models;

namespace XB.Controllers
{
    public class CategoryControl
    {
        public DataTable CategoriesData()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select * from categories");
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
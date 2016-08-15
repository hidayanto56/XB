using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using XB.Models;

namespace XB.Controllers
{
    public class LoginControl : Login
    {
        public string Login()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("Select * from USR where NPM = @a and PSD = @b");
                kon.cmd.Parameters.AddWithValue("a", NPM);
                kon.cmd.Parameters.AddWithValue("b", PSD);
                DataTable dt =  kon.ExecuteReader();

                KoneksiSQL kon1 = new KoneksiSQL();
                kon1.Open("select Nama from Mahasiswa where NPM = @c");
                kon1.cmd.Parameters.AddWithValue("c", NPM);
                DataTable dn = kon1.ExecuteReader();

                if (dt.Rows.Count > 0 && dn.Rows.Count > 0)
                {
                    Nama = dn.Rows[0]["Nama"].ToString();
                    Pos = dt.Rows[0]["Pos"].ToString();
                    return "sukses";
                }
                else
                {
                    return "";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void ChangePassword()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("update usr set psd = @a where npm = @b");
                kon.cmd.Parameters.AddWithValue("a", PSD);
                kon.cmd.Parameters.AddWithValue("b", NPM);
                kon.ExecuteNonQuery();
                kon.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
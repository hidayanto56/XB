using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using XB.Models;

namespace XB.Controllers
{
    public class KRSControl : KRS1
    {
        public DataTable getDataKRS()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select KodeMK, Kelas, NamaMK, Dosen.Nama, sks, SUBSTRING(Matkul.KodeMK,6,1) as Semester "
                + " from Matkul join Dosen on id = id_dosen order by Semester,Kelas");
                DataTable dt = kon.ExecuteReader();
                kon.Close();

                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        public DataTable getKRSsmt()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select KodeMK, Kelas, NamaMK, Dosen.Nama, sks, SUBSTRING(Matkul.KodeMK,6,1) as Semester "
                + " from Matkul join Dosen on id = id_dosen where SUBSTRING(Matkul.KodeMK,6,1) = @a order by Kelas");
                kon.cmd.Parameters.AddWithValue("a", Semester);
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
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using XB.Models;

namespace XB.Model
{
    public class ProfileControl : Profile
    {
        public DataTable getProfile()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select NPM, Nama, Tempat_Lahir, Tanggal_Lahir, Alamat, Telp, Email, Foto from mahasiswa where npm = @a");
                kon.cmd.Parameters.AddWithValue("a", NPM);

                DataTable dt = kon.ExecuteReader();
                kon.Close();

                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public DataTable getUser()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select Nama  from mahasiswa where npm = @a");
                kon.cmd.Parameters.AddWithValue("a", NPM);
                DataTable dt = kon.ExecuteReader();
                kon.Close();
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void Update()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("Update Mahasiswa set Tempat_Lahir = @a, Tanggal_lahir = @b, Alamat = @c, Telp = @d, Email = @e where NPM=@g and Nama = @h");
                kon.cmd.Parameters.AddWithValue("a", Tempat);
                kon.cmd.Parameters.AddWithValue("b", Tanggal);
                kon.cmd.Parameters.AddWithValue("c", Alamat);
                kon.cmd.Parameters.AddWithValue("d", Telp);
                kon.cmd.Parameters.AddWithValue("e", Email);
                //kon.cmd.Parameters.AddWithValue("f", SqlDbType.Image).Value = Foto;
                kon.cmd.Parameters.AddWithValue("g", NPM);
                kon.cmd.Parameters.AddWithValue("h", Nama);
                kon.ExecuteNonQuery();
                kon.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void UpdateImage()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("Update Mahasiswa set Foto = @f where NPM=@g and Nama = @h");
                
                kon.cmd.Parameters.AddWithValue("f", SqlDbType.Image).Value = Foto;
                kon.cmd.Parameters.AddWithValue("g", NPM);
                kon.cmd.Parameters.AddWithValue("h", Nama);
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
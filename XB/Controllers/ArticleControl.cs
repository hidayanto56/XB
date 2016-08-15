using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using XB.Models;

namespace XB.Controllers
{
    public class ArticleControl : Article
    {
        
        public DataTable getSemuaArticle()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select * from Artikel  where Aktif = 1 and draft = 0 order by tanggal desc");
                DataTable dt = kon.ExecuteReader();
                kon.Close();
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getTop20Article()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select top 20 * from Artikel where Aktif = 1 and draft = 0 order by tanggal desc");
                DataTable dt = kon.ExecuteReader();
                kon.Close();
                return dt;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getSatuArticle()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select * from Artikel where id = @a and Aktif = 1 and draft = 0");
                kon.cmd.Parameters.AddWithValue("a", Id);
                DataTable dt = kon.ExecuteReader();

                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getDrafts()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("select * from Artikel where Aktif = 1 and draft = 1");
                DataTable dt = kon.ExecuteReader();
                kon.Close();
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void TambahArtikel()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("insert into Artikel(Judul,  isi, id_kategori, tags,  tanggal, draft,author,image,hits) values (@a,@b,@c,@d,@e,@f,@g,@h,@i)");
                kon.cmd.Parameters.AddWithValue("a", Judul);
                kon.cmd.Parameters.AddWithValue("b", Isi);
                kon.cmd.Parameters.AddWithValue("c", Id_Kat);
                kon.cmd.Parameters.AddWithValue("d", Tags);
                kon.cmd.Parameters.AddWithValue("e", Tanggal);
                kon.cmd.Parameters.AddWithValue("f", Draft);
                kon.cmd.Parameters.AddWithValue("g", Author);
                kon.cmd.Parameters.AddWithValue("h", Image);
                kon.cmd.Parameters.AddWithValue("i", Hits);
                kon.ExecuteNonQuery();
                kon.Close();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void NonAktifArtikel()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("update Artikel set Aktif = 0 where id = @a");
                kon.cmd.Parameters.AddWithValue("a", Id);
                kon.ExecuteNonQuery();
                kon.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void EditArtikel()
        {
            try
            {
                KoneksiSQL kon = new KoneksiSQL();
                kon.Open("update Artikel set judul = @a,  Isi=@c, Id_kategori=@d, Tags=@e, Aktif=@f, tanggal=@g, Draft=@h, Author=@i, Image=@j, Hits=@k where id =@l");
                kon.cmd.Parameters.AddWithValue("a", Judul);
                //kon.cmd.Parameters.AddWithValue("b", Headline);
                kon.cmd.Parameters.AddWithValue("c", Isi);
                kon.cmd.Parameters.AddWithValue("d", Id_Kat);
                kon.cmd.Parameters.AddWithValue("e", Tags);
                kon.cmd.Parameters.AddWithValue("f", Aktif);
                kon.cmd.Parameters.AddWithValue("g", Tanggal);
                kon.cmd.Parameters.AddWithValue("h", Draft);
                kon.cmd.Parameters.AddWithValue("i", Author);
                kon.cmd.Parameters.AddWithValue("j", Image);
                kon.cmd.Parameters.AddWithValue("k", Hits);
                kon.cmd.Parameters.AddWithValue("l", Id);

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

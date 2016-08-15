using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XB.Models
{
    public class NewArticle
    {
        public int Id { get; set; }
        public String Judul { get; set; }
        public String Headline { get; set; }
        public String Isi { get; set; }
        public int Id_Kat { get; set; }
        public String Tags { get; set; }
        public int Aktif { get; set; }
        public DateTime Tanggal { get; set; }
        public int Draft { get; set; }
        public String Author { get; set; }
        public byte[] Image { get; set; }
        public int Hits { get; set; }

    }
}
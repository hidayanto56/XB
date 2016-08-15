using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XB.Models
{
    public class Article
    {
        public int Id { set; get; }
        public String Judul {set; get;}
        public String Headline {set; get;}
        public String Isi {set; get;}
        public int Id_Kat {set; get;}
        public string Tags {set; get;}
        public int Aktif {set; get;}
        public DateTime Tanggal {set; get;}
        public int Draft {set; get;}
        public String Author {set; get;}
        public byte[] Image {set; get;}
        public int Hits {set; get;}
    }
}
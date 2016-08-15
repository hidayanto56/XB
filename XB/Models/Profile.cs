using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace XB.Models
{
    public class Profile
    {
        public String NPM { get; set; }
        public String Nama { get; set; }
        public String Tempat { get; set; }
        public DateTime Tanggal { get; set; }
        public String Alamat { get; set; }
        public String Telp { get; set; }
        public String Email { get; set; }
        public byte[] Foto { get; set; }
        public int id { get; set; }
    }
}
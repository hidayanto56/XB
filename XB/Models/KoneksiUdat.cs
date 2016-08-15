using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace XB.Models
{
    public class KoneksiUdat
    {
         public SqlConnection conn { set; get; }
        public SqlCommand cmd { set; get; }

        public KoneksiUdat()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ToString());
        }

        public void Open(String query)
        {
            try
            {
                conn.Open();
                cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = query;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void Close()
        {
            if (conn != null)
            {
                conn.Close();
            }
        }


        ///SELECT
        public DataTable ExecuteReader()
        {
            DataTable dt = new DataTable();
            SqlDataReader dr = cmd.ExecuteReader();
            dt.Load(dr);
            Close();

            return dt;
        }

        ///Insert Update Delete
        public void ExecuteNonQuery()
        {
            cmd.ExecuteNonQuery();
            Close();
        }
    }
}
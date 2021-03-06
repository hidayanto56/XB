﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace XB.Models
{
    public class KoneksiSQL
    {
        public SqlConnection conn { set; get; }
        public SqlCommand cmd { set; get; }

        public KoneksiSQL()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connstrMember"].ToString());
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

        ////datalist item
        //public DataListItem ExecuteReaderDataListItem();
        //DataListItem dli = new DataListItem();
        //SqlDataReader dr = 
       
        ///Insert Update Delete
        public void ExecuteNonQuery()
        {
            cmd.ExecuteNonQuery();
            Close();
        }
    }
}
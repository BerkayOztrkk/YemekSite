using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class SqlBaglantımız
{
    public SqlConnection Baglantımız()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-P65FJRU\SQLEXPRESS;Initial Catalog=dbo_YemekTarifi;Integrated Security=True;");
        baglan.Open();
        return baglan;

    }
}
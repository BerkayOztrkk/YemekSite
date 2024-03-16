using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Hakkımızda : System.Web.UI.Page
{
    SqlBaglantımız bgl = new SqlBaglantımız();

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from tbl_hakkimizda", bgl.Baglantımız());
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();


    }
}
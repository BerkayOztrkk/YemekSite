using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class KategoriDetay : System.Web.UI.Page
{
    SqlBaglantımız snf=new SqlBaglantımız();
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriid=Request.QueryString[kategoriid];
        SqlCommand komut = new SqlCommand("select*from tbl_yemekler where kategoriid=@p1", snf.Baglantımız());
        komut.Parameters.AddWithValue("@p1",kategoriid);
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page

{
   SqlBaglantımız bgl =new SqlBaglantımız();
    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Kategoriid"];

        if(Page.IsPostBack==false)
        {

        
        SqlCommand komut2 = new SqlCommand("Select * From tbl_kategoriler where kategoriid=@p1",bgl.Baglantımız());
        komut2.Parameters.AddWithValue("@p1",id);
        SqlDataReader dr2 = komut2.ExecuteReader();
        while (dr2.Read())
        {
            TextBox1.Text=dr2[1].ToString();
            TextBox2.Text=dr2[2].ToString();
        }
        bgl.Baglantımız().Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update tbl_kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3", bgl.Baglantımız());
        komut.Parameters.AddWithValue ("@p1",TextBox1.Text);
        komut.Parameters.AddWithValue ("@p2",TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.Baglantımız().Close();


       
    }
}
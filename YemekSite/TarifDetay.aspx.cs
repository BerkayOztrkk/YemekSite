using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class TarifDetay : System.Web.UI.Page
{
    SqlBaglantımız baglanti=new SqlBaglantımız();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Tarifid"];
        if(Page.IsPostBack == false)
        {

       
        SqlCommand komut=new SqlCommand("select*from tbl_tarifler where tarifid=@p1",baglanti.Baglantımız());
        komut.Parameters.AddWithValue("@p1",id);
        SqlDataReader reader = komut.ExecuteReader();
        while (reader.Read())
        {
            TextBox1.Text=reader[1].ToString();
            TextBox2.Text=reader[2].ToString();
            TextBox3.Text=reader[3].ToString();
            
            TextBox5.Text=reader[5].ToString();
            TextBox6.Text=reader[6].ToString();
        }
        baglanti.Baglantımız().Close();
            //Kategori listesi
            SqlCommand cmd2 = new SqlCommand("select*from tbl_kategoriler", baglanti.Baglantımız());
            SqlDataReader reader2 = cmd2.ExecuteReader();
            DropDownList1.DataTextField ="KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = reader2;
            DropDownList1.DataBind();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // Durum Güncelleme

        SqlCommand cmd = new SqlCommand("update tbl_tarifler set tarifdurum=1 where tarifid=@p1",baglanti.Baglantımız());
        cmd.Parameters.AddWithValue("@p1", id);
        cmd.ExecuteNonQuery();
        baglanti.Baglantımız().Close() ;


        //Yemeği anasayfaya ekleme

        SqlCommand cmd2 = new SqlCommand("insert into tbl_yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid)values(@p1,@p2,@p3,@p4)", baglanti.Baglantımız());
        cmd2.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd2.ExecuteNonQuery();
        baglanti.Baglantımız().Close();







    }
}
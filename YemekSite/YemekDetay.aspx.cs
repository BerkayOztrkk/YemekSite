using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class YemekDetay : System.Web.UI.Page
{
    SqlBaglantımız bgl = new SqlBaglantımız();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid=Request.QueryString["yemekid"];

        SqlCommand komut = new SqlCommand("select YemekAd from tbl_yemekler where yemekid=@p1", bgl.Baglantımız());
        komut.Parameters.AddWithValue("@p1",yemekid);
        SqlDataReader oku = komut.ExecuteReader();
        while (oku.Read())
        {
            Label3.Text=oku[0].ToString();
        }
       bgl.Baglantımız().Close();
        //Yorumları Listeleme
        SqlCommand komut2 = new SqlCommand("Select * from tbl_yorumlar where yemekid=@p2",bgl.Baglantımız() );
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader oku2 = komut2.ExecuteReader();
        DataList2.DataSource = oku2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into tbl_yorumlar(YorumAdSoyad,YorumMail,Yorumİcerik,yemekid) values(@p1,@p2,@p3,@p4)", bgl.Baglantımız());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", yemekid);
        komut.ExecuteNonQuery();
        bgl.Baglantımız().Close();

    }
}
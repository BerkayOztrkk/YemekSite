using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class YorumDetay : System.Web.UI.Page
{
SqlBaglantımız bgl=new SqlBaglantımız();
    string id = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Yorumid"];
        if(Page.IsPostBack == false )
        {

        
        SqlCommand cmd = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd from tbl_yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1",bgl.Baglantımız());  
        cmd.Parameters.AddWithValue("@p1",id);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text=dr[0].ToString();
            TextBox2.Text=dr[1].ToString();
            TextBox3.Text=dr[2].ToString();
            TextBox4.Text=dr[3].ToString();
           
        }
        bgl.Baglantımız().Close();
    }
}

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update tbl_yorumlar set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.Baglantımız());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.Baglantımız().Close() ;

    }
}
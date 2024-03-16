using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Kategoriler : System.Web.UI.Page
{
    SqlBaglantımız bgl = new SqlBaglantımız();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            id=Request.QueryString["Kategoriid"];
            islem=Request.QueryString["islem"];

        }
        SqlCommand komut = new SqlCommand("Select*from tbl_kategoriler", bgl.Baglantımız());
        SqlDataReader reader = komut.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();
        //Silme işlemi
        if (islem=="sil")
        {
            SqlCommand komutsil = new SqlCommand("delete from tbl_kategoriler where kategoriid=@p1", bgl.Baglantımız());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.Baglantımız().Close();
        }

        Panel2.Visible = false;
        Panel4.Visible= false;


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible=true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible=false;
    }



    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel4.Visible =true;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel4.Visible= false;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into tbl_kategoriler (KategoriAd) values(@p1)",bgl.Baglantımız());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.Baglantımız().Close();

    }
}
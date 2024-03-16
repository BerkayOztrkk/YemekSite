using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yemekler : System.Web.UI.Page
    
{
    SqlBaglantımız bgl= new SqlBaglantımız();
    string islem = "";
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        if (Page.IsPostBack==false)
        {
            id=Request.QueryString["Yemekid"];
            islem=Request.QueryString["islem"];


            //Kategori listesi
            SqlCommand cmd2 = new SqlCommand("select*from tbl_kategoriler", bgl.Baglantımız());
            SqlDataReader reader2 = cmd2.ExecuteReader();
            DropDownList1.DataTextField ="KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = reader2;
            DropDownList1.DataBind();
        }
        //Yemek Listesi
        SqlCommand cmd = new SqlCommand("select*from tbl_yemekler",bgl.Baglantımız());
        SqlDataReader reader = cmd.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();
        
        if (islem =="sil")
        {
            SqlCommand cmd2 = new SqlCommand("Delete from tbl_yemekler where Yemekid=@p1", bgl.Baglantımız());
            cmd2.Parameters.AddWithValue("@p1", id);
            cmd2.ExecuteNonQuery();
            bgl.Baglantımız().Close();
        }

        //Kategori sayısını arttırma

        SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.Baglantımız());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.Baglantımız().Close();

        

        

        
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
        Panel4.Visible=true;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel4.Visible=false;

    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into tbl_yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.Baglantımız());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBoxmalzeme.Text);
        cmd.Parameters.AddWithValue("@p3", TextBoxtarif.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        bgl.Baglantımız().Close();


    }
}
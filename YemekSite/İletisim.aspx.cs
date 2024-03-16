using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class İletisim : System.Web.UI.Page
{
    SqlBaglantımız bgl = new SqlBaglantımız();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into tbl_mesajlar (MesajGonderen,MesajBaslik,MesajMail,Mesajİcerik) values(@p1,@p2,@p3,@p4)", bgl.Baglantımız());
        komut.Parameters.AddWithValue("@p1", Textadsoyad.Text);
        komut.Parameters.AddWithValue("@p2", Textkonu.Text);
        komut.Parameters.AddWithValue("@p3", Textmail.Text);
        komut.Parameters.AddWithValue("@p4", Textmesaj.Text);
        komut.ExecuteNonQuery();
        bgl.Baglantımız().Close();
    }
}
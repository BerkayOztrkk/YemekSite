using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    SqlBaglantımız bgl = new SqlBaglantımız();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["Mesajid"];
        SqlCommand komut = new SqlCommand(" select*from tbl_mesajlar where mesajid=@p1", bgl.Baglantımız());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader reader = komut.ExecuteReader();
        while (reader.Read())
        {
            TextBox1.Text=reader[1].ToString();
            TextBox2.Text=reader[2].ToString();
            TextBox3.Text=reader[3].ToString();
            TextBox4.Text=reader[4].ToString();
        }
        bgl.Baglantımız().Close();
    }
}
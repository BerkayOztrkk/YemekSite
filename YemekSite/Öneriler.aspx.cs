using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Öneriler : System.Web.UI.Page
{
    SqlBaglantımız bgl=new SqlBaglantımız();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible=false;
        Panel3.Visible=false;
       
        
       //onaysız yorumlar
       
        SqlCommand komut =new SqlCommand("select*from tbl_tarifler where tarifdurum=0 ",bgl.Baglantımız());
        SqlDataReader dataReader=komut.ExecuteReader();
        DataList1.DataSource=dataReader;
        DataList1.DataBind();
       
        //onaylı yorumlar

        SqlCommand komut2 = new SqlCommand("select*from tbl_tarifler where tarifdurum=1", bgl.Baglantımız());
        SqlDataReader dataReader2 = komut2.ExecuteReader();
        DataList2.DataSource=dataReader2;
        DataList2.DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible=false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel3.Visible=true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel3.Visible=false;
    }
}
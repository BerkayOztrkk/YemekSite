using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Kullanici : System.Web.UI.MasterPage
{
    SqlBaglantımız bgl= new SqlBaglantımız();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select*from tbl_kategoriler",bgl.Baglantımız());
        SqlDataReader oku=komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

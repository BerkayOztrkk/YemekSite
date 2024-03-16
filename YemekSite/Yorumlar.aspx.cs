using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    SqlBaglantımız bgl = new SqlBaglantımız();
    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible= false;
        Panel4.Visible= false;

        //Onaylı Yorumlar
        SqlCommand komut = new SqlCommand("select*from tbl_yorumlar where YorumOnay=1", bgl.Baglantımız());
        SqlDataReader rdr = komut.ExecuteReader();
        DataList1.DataSource = rdr;
        DataList1.DataBind();
        //Onaysız Yorumlar
        SqlCommand komut2 = new SqlCommand("select*from tbl_yorumlar where YorumOnay=0", bgl.Baglantımız());
        SqlDataReader rdr2 = komut2.ExecuteReader();
        DataList2.DataSource = rdr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible=true;
        

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible= false;
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible=true;    
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible=false;
    }
}

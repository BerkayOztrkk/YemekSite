<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td style="background-color: #FFCC00">


                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                            <asp:Label ID="Label3" runat="server" Style="font-weight: 700; font-size: x-large" Text='<%#Eval("YemekAd") %>'></asp:Label>
                        </a>


                    </td>
                </tr>
                <tr>
                    <td style="font-weight: 700; font-size: medium">Malzemeler:<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: 700">Yemek Tarifi:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: 700">&nbsp;Tarih:<asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Puan:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KategoriID:<asp:Label ID="Label8" runat="server" Text='<%# Eval("Kategoriid") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


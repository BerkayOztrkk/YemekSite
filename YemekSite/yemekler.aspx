<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="yemekler.aspx.cs" Inherits="yemekler" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }

        .auto-style7 {
            font-weight: bold;
            font-size: large;
            text-align: left;
            margin-left: 0px;
        }

        .auto-style8 {
            width: 37px;
        }

        .auto-style9 {
            width: 61px;
        }

        .auto-style10 {
            margin-left: 40px;
        }

        .auto-style11 {
            font-weight: bold;
        }

        .auto-style12 {
            font-weight: bold;
            font-size: large;
        }
    .auto-style13 {
        margin-left: 40px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td style="font-weight: 700">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Style="text-align: left; font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">
                            <a href="yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/BannerPhoto/delete.png" Style="text-align: right; margin-left: 28px" Width="32px" />

                            </a>
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/BannerPhoto/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style8">
                    <strong>
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style12" Height="30px"  Text="+" Width="30px" OnClick="Button6_Click" />
                    </strong>
                </td>
                <td class="auto-style9">
                    <strong>
                        <asp:Button ID="Button7" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button7_Click" />
                    </strong>
                </td>
                <td style="font-weight: 700">YEMEK EKLE</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4" id="Panel4">
            <tr>
                <td>YEMEK ADI:&nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxmalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxtarif" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style11" Text="EKLE" Width="80px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


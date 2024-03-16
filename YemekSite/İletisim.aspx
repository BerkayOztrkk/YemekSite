<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="İletisim.aspx.cs" Inherits="İletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        font-weight: bold;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td colspan="2" style="font-weight: 700; font-size: x-large; color: #FFFFFF">MESAJ PANELİ</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="Textadsoyad" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mail Adresiniz:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="Textmail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Konu:</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="Textkonu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Mesaj:</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="Textmesaj" runat="server" CssClass="tb5" Height="100px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="margin-left: 80px">
            <asp:Button ID="Button1" runat="server" style="font-size: large" Text="Gönder" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>


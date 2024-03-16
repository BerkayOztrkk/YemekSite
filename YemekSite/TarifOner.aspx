<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Ad:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Malzemeler</td>
        <td style="margin-left: 120px">
            <asp:TextBox ID="TxtMalzemeler" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Yapılış:</td>
        <td style="margin-left: 160px">
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Resim:</td>
        <td style="margin-left: 200px">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarifi Öneren:</td>
        <td style="margin-left: 160px">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Adresi:</td>
        <td style="margin-left: 160px">
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="margin-left: 160px">
            <asp:Button ID="BtnTariFOner" runat="server" BackColor="Gray" Font-Bold="True" Font-Italic="True" Text="Tarif Öner" Width="150px" OnClick="BtnTariFOner_Click" />
        </td>
    </tr>
</table>
</asp:Content>


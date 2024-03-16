<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td style="margin-left: 40px; text-align: center;">
                    <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: x-large; text-align: right;" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 80px">
                    <strong>Malzemeler:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 80px">
                    <strong>Tarif:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 120px; text-align: center;">
                    <asp:Image ID="Image1" runat="server" Height="150px" style="margin-left: 4px;" Width="150px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td style="margin-left: 120px"><strong>Puan:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="margin-left: 120px"><strong>Tarih:</strong><asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


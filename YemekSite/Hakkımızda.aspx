<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style5" style="font-weight: 700">
    HAKKIMIZDA</p>
<asp:DataList ID="DataList2" runat="server" Width="448px">
    <ItemTemplate>
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


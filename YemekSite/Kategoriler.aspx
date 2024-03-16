                                                                                            <%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

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
                                                                                                </style>
                                                                                            </asp:Content>
                                                                                            <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
                                                                                                <asp:Panel ID="Panel1" runat="server">
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td class="auto-style8">
                                                                                                                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                                                                                                            </td>
                                                                                                <td class="auto-style9">
                                                                                                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                                                                                            </td>
                                                                                            <td style="font-weight: 700">KATEGORİ LİSTESİ</td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        <asp:Panel ID="Panel2" runat="server">
                                                                            <asp:DataList ID="DataList1" runat="server" Width="443px">
                                                                                <itemtemplate>
                                                                                <table class="auto-style4">
                                                                                    <tr>
                                                                                    <td>
                                                                                        <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                                                                                </td>
                                                                                <td class="auto-style6">&nbsp;</td>
                                                                                <td class="auto-style6">
                                                                                <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/BannerPhoto/delete.png" style="text-align: right; margin-left: 28px" Width="32px" />

                                                                            </a>
                                                                        <a href="KategoriAdminDetay.aspx?Kategoriid=<%#Eval("Kategoriid") %>">
                                                                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/BannerPhoto/update.png" Width="30px" />
                                                                        </a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </itemtemplate>
                                        </asp:DataList>
                                    </asp:Panel>
                                <asp:Panel ID="Panel3" runat="server">
                                    <table class="auto-style4">
                                        <tr>
                                            <td class="auto-style8">
                                                <strong>
                                                    <asp:Button ID="Button6" runat="server" CssClass="auto-style12" Height="30px" OnClick="Button6_Click" Text="+" Width="30px" />
                                                </strong>
                                            </td>
                                            <td class="auto-style9">
                                                <strong>
                                                    <asp:Button ID="Button7" runat="server" CssClass="auto-style12" Height="30px" OnClick="Button7_Click" Text="-" Width="30px" />
                                                </strong>
                                            </td>
                                        <td style="font-weight: 700">KATEGORİ EKLE</td>
                                    </tr>
                            </table>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <table class="auto-style4" id="Panel4">
                <tr>
                    <td>KATEGORİ AD:&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON</td>
                <td class="auto-style10">
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style11" Text="EKLE" Width="80px" OnClick="BtnEkle_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


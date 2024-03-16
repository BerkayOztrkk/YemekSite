<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            width: 37px;
        }

        .auto-style7 {
            font-weight: bold;
            font-size: large;
            text-align: left;
            margin-left: 0px;
        }

        .auto-style9 {
            width: 61px;
        }

        .auto-style10 {
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td style="font-weight: 700">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="443px">
        <itemtemplate>
            <table class="auto-style4">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/BannerPhoto/details.png" Width="30px" /></a>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </itemtemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>


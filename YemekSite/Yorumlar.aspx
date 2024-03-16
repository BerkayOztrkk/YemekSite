<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

        .auto-style6 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td style="font-weight: 700">ONAYLANAN YORUMLAR</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px">
            <itemtemplate>
                <table class="auto-style4">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/BannerPhoto/delete.png" style="text-align: right; margin-left: 28px" Width="32px" />
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/BannerPhoto/update.png" Width="30px" />
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td style="font-weight: 700">ONAYSIZ YORUMLAR</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="443px">
            <itemtemplate>
                <table class="auto-style4">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">
                            <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/BannerPhoto/delete.png" style="text-align: right; margin-left: 28px" Width="32px" />
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/BannerPhoto/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>


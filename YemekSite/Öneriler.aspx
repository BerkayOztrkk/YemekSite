<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Öneriler.aspx.cs" Inherits="Öneriler" %>

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
            font-weight: bold;
        }
        .auto-style11 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4" __designer:mapid="259">
        <tr __designer:mapid="25a">
            <td class="auto-style8" __designer:mapid="25b">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
            </td>
            <td class="auto-style9" __designer:mapid="25d">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
            </td>
            <td __designer:mapid="25f" class="auto-style10">&nbsp; ONAYSIZ TARİF LİSTESİ </td>
        </tr>
    </table>
    
                                            <asp:Panel ID="Panel2" runat="server">
                                        <asp:DataList ID="DataList1" runat="server" Width="443px">
                                            <itemtemplate>
                                            <table class="auto-style4">
                                                <tr>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                            </td>
                                            <td class="auto-style11">
                                               
                                                
                                                    <a href="TarifDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/BannerPhoto/details.png" Width="30px" /></a>
                                               
                                                
                                                    </td>
                    </tr>
                </table>
            </itemtemplate>
    </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style8">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"   />
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"   />
            </td>
            <td style="font-weight: 700">ONAYLI TARİF LİSTESİ</td>
        </tr>
    </table>
</asp:Panel>
                                                <asp:Panel ID="Panel3" runat="server">
                                        <asp:DataList ID="DataList2" runat="server" Width="443px">
                                            <itemtemplate>
                                            <table class="auto-style4">
                                                <tr>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: large" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                            </td>
                                            <td class="auto-style11">
                                               
                                                
                                                    <a href="TarifDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/BannerPhoto/details.png" Width="30px" /></a>
                                               
                                                
                                                    </td>
                    </tr>
                </table>
            </itemtemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>


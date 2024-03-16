<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkımızdaAdmin.aspx.cs" Inherits="HakkımızdaAdmin" %>

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
        text-align: center;
    }
    .auto-style12 {
        font-size: medium;
    }

                                                                                                    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style10">HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style12" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    <strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Text="GÜNCELLE" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>


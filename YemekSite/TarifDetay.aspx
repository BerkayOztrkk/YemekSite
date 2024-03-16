<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifDetay.aspx.cs" Inherits="TarifDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style6 {
            font-weight: bold;
            text-align: right;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
            margin-left: 80px;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Tarif Adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Malzemeler:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Yapılış:</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Tarif Resim:<br /> </strong></td>
                <td class="auto-style8">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style3" style="margin-left: 40px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail:</strong></td>
                <td class="auto-style3" style="margin-left: 40px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Kategori:</strong></td>
                <td class="auto-style3" style="margin-left: 40px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7" style="margin-left: 40px">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7" style="margin-left: 40px"><strong>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Onayla" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


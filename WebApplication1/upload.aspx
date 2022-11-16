<%@ Page Title="" Language="C#" MasterPageFile="~/Devices.master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="WebApplication1.upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 287px;
            text-align: right;
        }
        .auto-style7 {
            font-size: large;
            font-weight: 700;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            font-size: large;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style5">
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
            </td>
            <td id="dev_id">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="رقم الجهاز"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:FileUpload ID="imgdev" runat="server" />
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Text="اسم الجهاز"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:DropDownList ID="drop_cus" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style10">ا<asp:Label ID="Label3" runat="server" Text="اسم الزبون"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:TextBox ID="txt_cost" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:Label ID="Label4" runat="server" Text="السعر"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" id="l">
                <asp:Label ID="lb_upload" runat="server" Text="..."></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="bt_buy" runat="server" CssClass="auto-style7" Text="شراء الجهاز" OnClick="bt_buy_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

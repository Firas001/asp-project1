<%@ Page Title="" Language="C#" MasterPageFile="~/Devices.master" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="WebApplication1.customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <style type="text/css">
        .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
            width: 288px;
            text-align: right;
        }
        .auto-style7 {
            text-align: center;
            color: #FFFFFF;
            font-weight: 700;
            font-size: large;
        }
        .auto-style8 {
            font-size: large;
            font-weight: 700;
        }
        .auto-style9 {
            font-size: large;
            font-weight: 700;
        }
        .auto-style10 {
            font-weight: 700;
            font-size: large;
        }
        </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" class="auto-style5">
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:Label ID="Label1" runat="server" Text="رقم الزبون"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:Label ID="Label2" runat="server" Text="اسم الزبون"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="txt_add" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:Label ID="Label3" runat="server" Text="العنوان"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:Label ID="Label4" runat="server" Text="رقم الهاتف"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lmsg" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;<asp:Label ID="lbupdate" runat="server" Text="..."></asp:Label>
            <asp:Button ID="btupdate" runat="server" CssClass="auto-style10" Text="تعديل" Width="59px" OnClick="btupdate_Click" />
            <asp:Label ID="lbdel" runat="server" Text="..."></asp:Label>
            <asp:Button ID="btdel" runat="server" CssClass="auto-style9" OnClick="btdel_Click" Text="حذف" Width="75px" />
            <asp:Button ID="bt_add" runat="server" CssClass="auto-style8" OnClick="bt_add_Click" Text="أدخل البيانات" Width="86px" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Devices.master" AutoEventWireup="true" CodeBehind="viewdata.aspx.cs" Inherits="WebApplication1.viewdata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:GridView ID="viewda" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="DeviceNum" HeaderText="رقم الجهاز" />
                        <asp:BoundField DataField="DeviceName" HeaderText="الجهاز" />
                        <asp:BoundField DataField="customerName" HeaderText="اسم الزبون" />
                        <asp:BoundField DataField="Date1" HeaderText="تاريخ الشراء" />
                        <asp:BoundField DataField="Cost" HeaderText="السعر" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

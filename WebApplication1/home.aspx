<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false" CssClass=" text-center col-centered margin-top-30p table table-bordered table-condensed table-responsive table-hover table-light w-50 rtl">

        <Columns>
		    <asp:BoundField DataField="DeviceNum" HeaderText="رقم الجهاز"></asp:BoundField>
		    <asp:BoundField DataField="DeviceName" HeaderText="اسم الجهاز"></asp:BoundField>
		    <asp:BoundField DataField="customerNum" HeaderText="رقم الزبون"></asp:BoundField>
		    <asp:BoundField DataField="date1" HeaderText="التاريخ"></asp:BoundField>
		    <asp:BoundField DataField="cost" HeaderText="السعر"></asp:BoundField>
		    <asp:BoundField DataField="customername" HeaderText="اسم الزبون"></asp:BoundField>	    
		</Columns>

    </asp:GridView>


      <script type="text/javascript">
          document.getElementById("home_view_data").classList.add("bt-active");
      </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="WebApplication1.customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .alert:empty {
            display:none;
            }
    </style>

    <!-- Delete message after 5 seconds -->
    <script type="text/javascript">
        function HideLabel() {
            document.getElementById('<%= alert.ClientID %>').style.display = "none";
        }
        setTimeout("HideLabel();", 5000);
    </script>




</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- form -->
    <div class="row">
        <div class="col-lg-4 col-lg-offset-4 col-centered">
    <div class="input-group margin-top-10p" >

        <div class="input-group margin-top-10p" >
            <asp:TextBox type="text" ID="txt_id" runat="server" CssClass="form-control rtl"></asp:TextBox>
            <span class="input-group-text"">رقم الزبون</span>
        </div>

        <div class="input-group margin-top-10p" >
            <asp:TextBox type="text" ID="txt_name" runat="server" CssClass="form-control rtl"></asp:TextBox>
            <span class="input-group-text">اسم الزبون</span>
        </div>

        <div class="input-group margin-top-10p" >
            <asp:TextBox type="text" ID="txt_add" runat="server" CssClass="form-control rtl"></asp:TextBox>
            <span class="input-group-text">العنوان</span>
        </div>

        <div class="input-group margin-top-10p" >
            <asp:TextBox type="text" ID="txt_phone" runat="server" CssClass="form-control rtl"></asp:TextBox>
            <span class="input-group-text">رقم الهاتف</span>
        </div>

    </div>
        <div class="alert alert-success rtl text-center margin-top-10p" role="alert" id="alert" runat="server" Visible="false">
            <asp:Label ID="lmsg" runat="server" Text="رسالة تحذير"></asp:Label>
        </div>

</div>
</div>


    <!-- buttons -->
    <div class="margin-top-30p text-center rtl">
        <asp:Button ID="bt_add" runat="server" CssClass="btn btn-primary btn-lg" Text="أدخل البيانات" OnClick="bt_add_click" />
        <asp:Button ID="bt_view" runat="server" CssClass="btn btn-secondary btn-lg" Text="عرض" OnClick="bt_view_click" />
        <asp:Button ID="bt_edit" runat="server" CssClass="btn btn-warning btn-lg" Text="تعديل" OnClick="bt_edit_click" />
        <asp:Button ID="bt_delete" runat="server" CssClass="btn btn-danger btn-lg" Text="حذف" OnClick="bt_delete_click" />
    </div>

        <script type="text/javascript">
            document.getElementById("customer_data").classList.add("bt-active");
        </script>


</asp:Content>

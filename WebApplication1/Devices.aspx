<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="Devices.aspx.cs" Inherits="WebApplication1.Devices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- form -->
    <div class="row">
        <div class="col-lg-4 col-lg-offset-4 col-centered">
    <div class="input-group margin-top-30p" >

        <div class="input-group mb-3" >
            <asp:TextBox type="text" ID="txt_id" runat="server" CssClass="form-control rtl"></asp:TextBox>
            <span class="input-group-text"">رقم الجهاز</span>
        </div>

        <div class="input-group mb-3" >
            <asp:TextBox type="text" ID="txt_name" runat="server" CssClass="form-control rtl"></asp:TextBox>
            <span class="input-group-text">اسم الجهاز</span>
        </div>

        <div class="input-group mb-3" >
            <asp:DropDownList CssClass="form-select rtl" ID="DropDownList2" runat="server">
                <asp:ListItem Text="D1" Value="d1" />
                <asp:ListItem Text="D2" Value="d2" />
            </asp:DropDownList>
            <span class="input-group-text">اسم الزبون</span>
        </div>

        <div class="input-group mb-3" >
            <asp:TextBox type="text" ID="txt_phone" runat="server" CssClass="form-control rtl"></asp:TextBox>
            <span class="input-group-text">السعر</span>
        </div>

          <asp:FileUpload CssClass="form-control rtl mb-3" type="file" ID="FileUpload1" runat="server" />

        <div class="input-group custom-file-button mb-3">
            <asp:TextBox type="file" ID="inputGroupFile" runat="server" CssClass="form-control rtl"></asp:TextBox>
		    <label class="input-group-text" for="inputGroupFile">أسم الجهاز</label>
	    </div>



        

    </div>
        <div class="alert alert-success rtl text-center margin-top-10p" role="alert" id="alert" runat="server" Visible="true">
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
            document.getElementById("device_data").classList.add("bt-active");
    </script>

</asp:Content>

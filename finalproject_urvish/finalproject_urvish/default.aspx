<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShop.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MobileShop.Index" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
    <div class="container">
        <div class="img-responsive">
&nbsp;</div>
        <div>
             <br />
             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/home11.jpg" PostBackUrl="~/android.aspx" ImageAlign="Middle" Height="700px" Width="1200px" />
        </div>
        <div>
           
            <br />
           
            <asp:ImageButton ID="ImageButton2" runat="server" Height="700px" ImageUrl="~/Images/home12.jpg" OnClick="ImageButton2_Click" ImageAlign="Middle" PostBackUrl="~/ios.aspx"  Width="1200px" />
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShop.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="MobileShop.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container-fluid">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
            <div class="row-fluid">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-4" style="border: 1px solid #7d7d7d; padding: 2%;">
                    <asp:Image ID="Image1" Width="100%" runat="server" />
                </div>
                <div class="col-sm-4" >
                    <div class="row-fluid">
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                    <div class="row-fluid">
                        <center style="font-size: 1.5em;"><asp:Label ID="product_name" runat="server" Text="Label"></asp:Label></center>
                    </div>
                    <div class="row-fluid">
                        <br />
                        <br />
                    </div>
                    <div class="row-fluid">
                        <div class="col-sm-6" style="text-align: center;">
                            <asp:Label ID="Label2" runat="server" Text="Price: "></asp:Label></div>
                        <div class="col-sm-6"><span style="text-align: left;">$
                            <asp:Label ID="product_price" runat="server" Text="Label"></asp:Label></span></div>
                    </div>
                    <div class="row-fluid">
                        <br />
                        <br />
                    </div>
                    <div class="row-fluid">
                        <div class="col-sm-6" style="text-align: center;">
                            <asp:Label ID="Label1" runat="server" Text="Description: "></asp:Label></div>
                        <div class="col-sm-6">
                            <p class="lead" style="text-align: left;">
                                <asp:Label ID="product_description" runat="server" Text="Label"></asp:Label></p>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="col-sm-6" style="text-align: center;">
                            <asp:Label ID="Label3" runat="server" Text="Specification: "></asp:Label></div>
                        <div class="col-sm-6">
                            <p class="lead" style="text-align: left;">
                                <asp:Label ID="product_spec" runat="server" Text="Label"></asp:Label></p>
                        </div>
                    </div>
                    
                   <div class="row-fluid">
                        <div class="col-sm-6" style="text-align: center;">
                            <asp:Label ID="Label4" runat="server" Text="Color: "></asp:Label></div>
                        <div class="col-sm-6">
                            <p class="lead" style="text-align: left;">
                                <asp:Label ID="product_color" runat="server" Text="product_spec"></asp:Label></p>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="col-sm-6" style="text-align: center;"><asp:Label ID="Label6" runat="server" Text="Quantity: "></asp:Label></div>
                        <div class="col-sm-6">
                            <div class="quantity">
                                <asp:TextBox ID="qty" runat="server" TextMode="Number" CausesValidation="true">1</asp:TextBox>
                                <br /><asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="Red" ErrorMessage="Quantity Must be between 1 to 10" MinimumValue="1" MaximumValue="10" Type="Integer" EnableClientScript="true" Text="The quantity must be from 1 to 10" ControlToValidate="qty"></asp:RangeValidator>
                            </div>
                        </div>
                    </div>
                   <%--<div class="row-fluid">
                        <div class="col-sm-6" style="text-align: center;">
                            <asp:Label ID="Label5" runat="server" Text="Warranty: "></asp:Label></div>
                        <div class="col-sm-6">
                            <p class="lead" style="text-align: left;">
                                <asp:Label ID="product_warranty" runat="server" Text="Label"></asp:Label></p>
                        </div>
                    </div>--%>
                    
                    <div class="row-fluid">
                        <center>
                            <asp:Button ID="addtocart" CssClass="addtocart" runat="server" Text="Add to Cart" OnClick="AddToCart"></asp:Button>
                        </center>
                        -<div class="col-sm-6"></div>
                        <div class="col-sm-6"></div>
                    </div>
                </div>
                <div class="col-sm-2">
                </div>
            </div>
            </div>

</asp:Content>

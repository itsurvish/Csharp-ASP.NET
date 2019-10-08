<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShop.Master" AutoEventWireup="true" CodeBehind="android.aspx.cs" Inherits="finalproject_urvish.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container">
         <div class="row">
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Id, product_name, product_image, product_price, product_desc, product_spec, product_color, product_warranty FROM products WHERE (product_warranty = '12 months')">
            <SelectParameters>
                    <asp:Parameter DefaultValue="12 months" Name="product_warranty" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                    <asp:LinkButton CssClass="card col-sm-3" runat="server" Style="margin: 1%;" ID="Unnamed" OnClick="Unnamed_Click" CommandArgument='<%# Bind("id") %>'>
                    <div>
                        <img src='<%# Eval("product_image") %>' 
                            alt='<%# Eval("product_name") %>' width="150" style="max-height:500px; min-height:500px;"/>
                        <div class="caption" style="text-align:center;">
                            <h3><%# Eval("product_name") %></h3>
                            <p><b>Price: <%# Eval("product_price", "{0:c}") %></b>
                            <%-- <p><b>Specification: <%# Eval("product_spec") %></b>
                                <p><b>Color: <%# Eval("product_color") %></b>
                                    <p><b>Warranty: <%# Eval("product_Warranty") %></b>--%>
                        </div>
               
                    </div>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:Repeater>
            <br />
    </div>
    </div>
    </div>
</asp:Content>

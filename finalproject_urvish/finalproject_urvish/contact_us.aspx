<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShop.Master" AutoEventWireup="true" CodeBehind="contact_us.aspx.cs" Inherits="MobileShop.Index" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xs-12 table-responsive">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Type</th>
                        <th>Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="width: 222px">Cell:</td>
                        <td><a href="phone:905-978-2900">905-978-2900</a><br />
                            Weekdays 9a.m to 5 p.m and Weekend 10 a.m to 4 p.m  Pacific Time</td>
                    </tr>
                    <tr>
                        <td style="width: 222px">E-mail:</td>
                        <td><a href="mailto:Umahant9006@conestogac.on.ca">Umahant9006@conestogac.on.ca</a></td>
                    </tr>
                   
                    <tr>
                        <td style="width: 222px">Address:</td>
                        <td>Customer Care<br />
                            100 The BoardWalk, K-W<br />
                            22612-3113</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

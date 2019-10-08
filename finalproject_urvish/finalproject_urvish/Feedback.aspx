<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShop.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="MobileShop.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="table-responsive">
    <table class="table">
        <tr>
            <td class="text-sm-left" style="height: 30px; width: 460px; font-size: medium;">Name</td>
            <td class="text-sm-center" style="height: 30px">
                <asp:TextBox ID="tb_name" runat="server" Width="310px" style="float:left"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_name" ErrorMessage="Please enter your name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_name" ErrorMessage="Please enter characters only" ForeColor="#FF3300" ValidationExpression="^[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-sm-left" style="width: 460px; height: 30px; font-size: medium;">Phone Number</td>
            <td class="text-sm-center" style="height: 30px">
                <asp:TextBox ID="tb_phn" runat="server" TextMode="Phone" Width="310px" style="float:left"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_phn" ErrorMessage="Please enter phone number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_phn" ErrorMessage="Please enter valid number" ForeColor="#FF3300" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-sm-left" style="width: 460px; height: 30px; font-size: medium;">Email Address</td>
            <td class="text-sm-center" style="height: 30px">
                <asp:TextBox ID="tb_email" runat="server" TextMode="Email" Width="310px" style="float:left"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_email" ErrorMessage="Please enter email address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-sm-left" style="width: 460px; font-size: medium;">Please leave your feedback</td>
            <td class="text-sm-center">
                <asp:TextBox ID="tb_comment" runat="server" Height="85px" style="float:left" TextMode="MultiLine" Width="310px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_comment" ErrorMessage="Please leave some feedback" ForeColor="#FF3300"></asp:RequiredFieldValidator>
               </td> 
            <tr>
            
                <td class="text-sm-left" style="width: 460px; font-size: medium;"></td>
            <td >
                <asp:Button ID="Button1" type="button" class="btn btn-secondary" runat="server" style="float:left" Text="Submit" OnClick="Button1_Click" Width="165px" ForeColor="White" BackColor="#0099FF" />
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick" Enabled="False">
                </asp:Timer>
                <br />
                <br />
                <asp:Label ID="lbl_submit_fb" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

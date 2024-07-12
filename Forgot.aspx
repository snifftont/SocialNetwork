<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Forgot.aspx.vb" Inherits="Forgot" title="www.localfriends.in-Forgot PAssword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
<div><center >
    <span style="font-size: 12pt">Forgot Your Password<br />
        Enter Your Email Address</span><asp:TextBox ID="TextBox1" runat="server" Width="256px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Send Me Password" Width="201px" />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
        ErrorMessage="Email Required" Font-Size="10pt"></asp:RequiredFieldValidator><br />
    <asp:Label ID="Label1" runat="server" Font-Size="11pt" ForeColor="#660033" Width="265px"></asp:Label><br />
    <a href="Login.aspx"><span style="font-size: 12pt">Login</span></a>
    </center></div>
</asp:Content>


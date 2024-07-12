<%@ Page Language="VB" MasterPageFile="Master.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" title="Login" %>
<%@ OutputCache Duration ="5" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
<div><center >
    <span style="font-family: @Arial Unicode MS"><span style="font-size: 16pt">&nbsp; Login to Local
        Friends&nbsp;</span></span>
    <table  style="border-right: silver thin solid; border-top: silver thin solid;border-left: silver thin solid; border-bottom: silver thin solid; display: block;position: absolute; left: 248px; top: 120px; width: 50%; height: 300px; font-size: 12pt;" align="right" id="TABLE1" runat="server">
        <tr>
            <td colspan="2" style="height: 21px; text-align: center">
                <span><strong><span style="color: #cc0066">Member's Login<br />
                </span>
                </strong><span style="color: #0000ff; text-decoration: underline"></span></span></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 13px; text-align: left; height: 42px;">
    <asp:Label ID="Label1" runat="server" Text="Email Address" Width="122px" Font-Size="12pt" Font-Bold="True" ForeColor="#990066"></asp:Label></td>
            <td style="width: 108px; text-align: left; height: 42px;">
    <asp:TextBox ID="txtEmail" runat="server" Height="17px" Width="258px"></asp:TextBox>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email Required!" Width="21px" Font-Size="8pt">Required</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 13px; text-align: left; height: 28px;">
                <asp:Label ID="Label2" runat="server" Text="Password" Width="41px" Font-Size="12pt" Font-Bold="True" ForeColor="#990066"></asp:Label></td>
            <td style="width: 108px; text-align: left; height: 28px;">
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="257px" Height="17px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password Required!" Width="11px" Font-Size="8pt">Required</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="2" style="height: 36px; text-align: center">
                <a href="Register.aspx"></a>
    <asp:Label ID="lblMessage" runat="server" Font-Size="8pt" ForeColor="#FF3366"></asp:Label>&nbsp;
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="129px" Font-Size="9pt" Height="30px" ToolTip="Click to Login !" />&nbsp;
    <asp:Label ID="lblMessage2" runat="server" Font-Size="8pt" ForeColor="#FF3366"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="2" style="height: 36px; text-align: center">
                <span><span style="color: #990033">Not a member yet ?</span> </span><a href="Registeration.aspx"><span>Click</span></a><span> 
                    <span style="color: #990033">here to join now !<br /><br /><br />
                        <a href="Forgot.aspx">Forgot Password? Click here</a></span></span></td>
        </tr>
    </table>
       <span style="font-size: 14pt">
        <br />
        <br />
    </span><span style="font-size: 14pt"></span>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="10pt" ShowMessageBox="True"
        Width="128px" ShowSummary ="False" Height="37px"  />
    <asp:Label ID="txtID" runat="server" Font-Size="8pt" Visible="False"></asp:Label>
     </center></div>
<br />
        <br />
<br />
        <br />
<br />
        <br />
<br />
        <br />
<br />
        <br />
<br />
        <br />
<br />
        <br />
<br />
        <br />
</asp:Content>


<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Registeration.aspx.vb" Inherits="Registeration" title="Make New Local Friends in India" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
<div><center >
    <span style="font-size: 12pt">
        </span>&nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <span style="font-size: 12pt">
        <br />
        <span style="color: #660033"><span style="font-size: 14pt">&nbsp;Join Local Friends<br />
        </span>
            <span><span style="font-size: 14pt">Enter Your Email Address:&nbsp; </span>
                <asp:TextBox ID="txtEmail" runat="server" Width="338px"></asp:TextBox></span></span></span><span style="color: #660033"> </span>&nbsp;
        <asp:Button ID="btnEmail" runat="server" BackColor="White" BorderColor="White" BorderStyle="Solid"
            Text="Submit" Width="158px" /></center>
    <center>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
            ErrorMessage="Email Address Required" Font-Size="10pt"></asp:RequiredFieldValidator>&nbsp;</center>
</div>
</asp:Content>


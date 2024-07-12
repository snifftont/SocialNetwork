<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="ProfileCreated.aspx.vb" Inherits="ProfileCreated" title="Profile Successful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <br />
    <div><center >
    <span style="font-size: 14pt; color: #990033"><strong>Profile Created Sucessfully!</strong></span></center>  
        <center>
            <span style="font-size: 14pt; color: #990033"><strong></strong></span>&nbsp;</center>
        <center>
            <span style="font-size: 14pt; color: #990033">Upload Your Photo Now !</span><asp:FileUpload
                ID="FileUpload1" runat="server" Height="21px" Width="304px" />
            <asp:Button ID="Upload" runat="server" Text="Upload" Width="129px" /></center>
        <center>
            <asp:Label ID="Label1" runat="server" Font-Size="10pt" Width="68px"></asp:Label>&nbsp;</center>
        <center>
            &nbsp;</center>
        <center>
            &nbsp; &nbsp; &nbsp; <span style="color: #660033"><span style="font-size: 10pt">No Thanks,I
                will upload Later,</span> </span><a href="Login.aspx"><span style="font-size: 12pt"><strong>Login Now
        !</strong></span></a>
        </center>
        <center>
            &nbsp;</center>
    </div>
</asp:Content>


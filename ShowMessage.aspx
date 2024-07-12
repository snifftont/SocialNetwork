<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="ShowMessage.aspx.vb" Inherits="ShowMessage" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <table id="TABLE1" bgcolor="gainsboro" bordercolor="darkgray" cellpadding="1" cellspacing="15"
        frame="box" onclick="return TABLE1_onclick()" style="border-right: #cccccc 30px solid;
        border-top: #cccccc 30px solid; border-left: #cccccc 30px solid; width: 100%;
        color: #000000; border-bottom: #cccccc 30px solid; height: 100%; background-color: transparent">
        <tr>
            <td align="center" nowrap="nowrap" style="width: 148px; height: 16px; text-align: center">
                <span style="font-size: 14pt; vertical-align: bottom; letter-spacing: 1px; text-align: center">
                    Hi!<asp:Label ID="lblUserName" runat="server"></asp:Label></span></td>
            <td align="center" colspan="2" style="width: 437px; height: 16px; text-align: center">
                <span style="font-size: 12pt"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; Messages Received</strong></span></td>
        </tr>
        <tr>
            <td align="center" rowspan="4" style="left: 10px; width: 148px; text-align: center; height: 67px;">
                <center>
                    &nbsp;&nbsp;</center>
                <center style="vertical-align: bottom; text-align: center">
                    <span style="font-size: 9pt"><a href="ProfileCreated.aspx"><span style="font-size: 12pt">
                    </span></a></span>
                </center>
                <span style="vertical-align: middle; color: #0000ff; text-align: left; text-decoration: underline">
                </span>
            </td>
            <td align="center" colspan="2" rowspan="4" style="width: 437px; text-align: center; height: 67px;">
                <asp:DetailsView ID="gvInbox2" runat="server" AutoGenerateRows="False" Height="100%"
                    Width="700px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" HorizontalAlign="Left">
                    <Fields>
                        <asp:TemplateField>
                            <ItemTemplate>
                              <b>From: <%#Eval("UserName")%></b> 
                                <b>Subject:<%#Eval("MsgSub")%></b><br /><br />
                                <b>Message:</b><%#Eval("Message")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <RowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    <FooterStyle BackColor="Tan" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:DetailsView>
                &nbsp; &nbsp; <a href="http://www.localfriends.in/ShowMyVideos.aspx?FileID=Stream/VideoSongs/Titanic-Kiss+Sceene-1.wmv">
                    <span style="font-size: 10pt"></span></a>&nbsp;<a href="/Videos/Default.aspx"><span
                        style="font-size: 12pt"></span></a><span style="font-size: 10pt; vertical-align: top;
                            color: #0000ff; text-align: center; text-decoration: underline"></span></td>
        </tr>
        <tr style="color: #0000ff; text-decoration: underline">
        </tr>
        <tr style="font-size: 10pt">
        </tr>
        <tr>
        </tr>
    </table>
    &nbsp; &nbsp; &nbsp;<a href="http://www.localfriends.in/ShowMyVideos.aspx?FileID=Stream/VideoSongs/Titanic-Kiss+Sceene-1.wmv"><span
        style="font-size: 10pt"></span></a>&nbsp;<a href="/Videos/Default.aspx"><span style="font-size: 12pt"></span></a><span
            style="font-size: 10pt; vertical-align: top; color: #0000ff; text-align: center;
            text-decoration: underline"></span>
</asp:Content>


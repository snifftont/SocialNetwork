<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ShowFlash.aspx.vb" Inherits="ShowFlash" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Showing Flash Videos</title>
     <script type="text/javascript" src="swfobject.js">function tech_onclick() {

}

</script>
<script language="javascript" type="text/javascript" for="tech" event="onclick">
// <!CDATA[
return tech_onclick()
// ]]>
</script>
</head>

<body bgcolor="#006699" style="color: #000000">
    <form id="form1" runat="server">
    <div><center > <%
    Dim flvName 
    'Dim flvTitle
    Dim rootpath
    Dim AppPath As String = Request.PhysicalApplicationPath   'This is the path of your application
             rootpath = "contents\flv\"
    ' rootpath = ConfigurationManager.AppSettings("VideoDownloadPath").ToString()
             flvName = rootpath & Request.QueryString("FileID") & ".flv"
    'flvTitle = Request("Tag")
   
%>
        <table bgcolor="black" style="border-right: black thin outset; border-top: black thin outset;
            left: 0px; vertical-align: top; border-left: black thin outset; width: 102%;
            border-bottom: black thin outset; position: absolute; top: 0px; height: 25px"
            width="100%">
            <tr>
                <td align="left" colspan="1" rowspan="1" style="border-top-width: thin; border-left-width: thin;
                    border-left-color: darkblue; border-bottom-width: thin; border-bottom-color: darkblue;
                    width: 841px; border-top-color: darkblue; height: 7px; border-right-width: thin;
                    border-right-color: darkblue" valign="top">
                    <asp:Menu ID="Menu1" runat="server" BackColor="Black" BorderColor="DarkBlue" BorderStyle="Outset"
                        BorderWidth="0px" DataSourceID="SiteMapDataSource1" DynamicEnableDefaultPopOutImage="False"
                        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="9pt" ForeColor="White"
                        Height="4px" Orientation="Horizontal" StaticDisplayLevels="2" StaticSubMenuIndent="10px"
                        Width="99%">
                        <DynamicMenuStyle BackColor="Black" BorderColor="Black" BorderStyle="None" />
                        <DynamicMenuItemStyle BackColor="Black" BorderColor="Black" BorderStyle="None" BorderWidth="0px"
                            ForeColor="white" HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticMenuItemStyle ForeColor="white" HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="Black" ForeColor="White" />
                        <StaticSelectedStyle BackColor="#cccccc" ForeColor="white" />
                        <DynamicSelectedStyle BackColor="black" ForeColor="white" />
                        <StaticHoverStyle BackColor="black" ForeColor="White" />
                    </asp:Menu>
                </td>
                <td align="right" style="height: 7px" valign="top">
                    <asp:Label ID="lblMail" runat="server" Font-Size="10pt" ForeColor="White" Text=""></asp:Label>
                </td>
                <td align="right" style="width: 60px; height: 7px" valign="top">
                    <asp:LoginStatus ID="LoginStatus1" runat="server" BackColor="Transparent" Font-Size="12pt"
                        ForeColor="White" LogoutAction="RedirectToLoginPage" Width="60px" />
                </td>
            </tr>
        </table>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" StartingNodeOffset="0" />
    </center>
        <center>
            &nbsp;</center>
        <center>
            <table style="width: 400px; height: 300px; background-color: transparent; z-index: 1; left: 25%; position: absolute; top: 16%; border-right: #ffffff 5px solid; border-top: #ffffff 5px solid; border-left: #ffffff 5px solid; border-bottom: #ffffff 5px solid;">
                <tr>
                    <td>
        <object id="tech" align="middle" border="1"  style="left: 310px; width: 100%; position: static; top:166px; height: 267px; z-index: 1;">
            <param name="allowScriptAccess" value="sameDomain">
            <param name="movie" value="<%=flvName%>">
            <param name="quality" value="high">
           
<embed
src="FLV.swf"
width="400"
height="300"
allowscriptaccess="always"
allowfullscreen="true"
flashvars="file=<%=flvName%>" 
/>
 </object>
                    </td>
                </tr>
            </table>
        </center>
        <center>
            <a href="MyVideos.aspx"><strong><span style="color: #000033">My Videos</span></strong></a><strong><span
                style="color: #000033">&nbsp; &nbsp;</span></strong><a href="Inbox.aspx"><strong><span
                    style="color: #000033">Inbox</span></strong></a></center>
        </div>
    </form>
</body>
</html>

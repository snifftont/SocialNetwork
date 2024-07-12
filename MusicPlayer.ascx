<%@ Control Language="VB" ClassName="MusicPlayer" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.IO " %>

<script runat="server">
  
    Public mediaFile As String
    Sub Page_Load()
        mediaFile = Request.Params("FileID")
        Dim len As Integer = ((Request.Params("FileID")).Substring(20)).Length
        Label1.Text = ((Request.Params("FileID")).Substring(20)).Substring(0, len - 3) 
        Label2.Text = mediaFile.ToString()
        
    End Sub
        
    
   
    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ssn As String = Session("Email")
        Dim url As String = Label2.Text
        Dim ToAddress As String = txtEmail.Text
        Dim mm As New MailMessage(ssn, ToAddress)
        mm.Subject = "You are invited to listen a Song on Local Friends"
        mm.Body = "<div><center>Hi!<br/>I found this very interesting song at Local Friends, Thought must invite you too !<br><br>" & "<a href='www.localfriends.in/ShowMyMusic.aspx?FileID=" & url & " '> Click Here To Play Song!</a>" & "<br/><br/>Local Friends Team <br/>www.localfriends.in </center></div>"
        mm.IsBodyHtml = True
        Dim smtp As New SmtpClient
        smtp.Send(mm)
        Label3.Text = "Sent Successfully! Send to another!"
    End Sub

    
</script>

<html> 
<head >

</head>
<body style="text-align: center; color: #000000; font-size: 12pt;"> 
<div ><center >
  <div><center >
 <TABLE ALIGN="left" BORDER=0 CELLSPACING=1 CELLPADDING=5  BGCOLOR ="#00CCFF" style="z-index: 1;position: absolute;top: 40%;left:1%; background-color: inactivecaptiontext; width: 97%; height:40%;">
     <TR ALIGN="left" VALIGN="middle">
         <TD bgcolor="#00CCFF" style="width: 100%; height: 54px; text-align: center" align="center">
            <center> <span style="font-size: 20pt; color: #660033">Local Friends<br/></span>
                 <span style="font-size: 14pt; color: #660033"><a href="Registeration.aspx"><span
                     style="font-size: 14pt">Join Now!</span></a></span></center>
         </TD>
     </TR>
     
       <TR ALIGN="left" VALIGN="middle">
     	<TD BGCOLOR="#00CCFF" style="width: 100%; height: 28px; text-align: center">
     	  <marquee direction ="left" behavior="scroll"   enableviewstate="true" scrolldelay="100" truespeed ="truespeed" ><FONT SIZE = "12"><span style="font-size: 12pt;"><strong style="background-color: #00CCFF"><span style="color:#00CCFF"><span style="color: darkred; background-color: #00CCFF"><img src="flixes.gif" width="100px" height="30px" alt="Local Friends"></img>
               Now Playing:</span>:</span><asp:Label ID="Label1"
               runat="server" ForeColor="#006633"></asp:Label><img src="flixes.gif" width="100px" height="30px" alt="Local Friends"></img> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;Send this song to your friends by entering email in box below !<img src="flixes.gif" width="100px" height="30px" alt="Local Friends"></img>
               </strong></span></FONT></marquee></TD>
       </TR>
     
     <TR>
     <TD BGCOLOR ="#00CCFF" style="width: 100%; text-align: center;" align="center"> 
        <OBJECT id="mediaPlayer" CLASSID="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6" type="application/x-oleobject" standby="Loading Windows Media Player components..." codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,4,7,1112"  style="width: 100%; height: 40%;" align="middle">
      
         <PARAM NAME="URL" VALUE="<%=mediaFile%>">
          <PARAM name="rate" value="1">
        <param name ="uiMode" value="none" />
        <PARAM name="balance" value="0">
        <PARAM name="enabled" value="false">
        <PARAM name="AutoRewind" VALUE="1">
       <PARAM name="enabledContextMenu" value="false">
       <param name="stretchToFit" value="true">
       <param name="playCount" value="3">
       <PARAM name="rate" value="true"> 
       <PARAM name="fullScreen" value="false"> 
       <PARAM NAME="TransparentAtStart" VALUE="true">
       <PARAM name="volume" value="100"> 
       <PARAM name="loop" value="false">         
      <EMBED 
        type='application/x-mplayer2'
        pluginspage='http://microsoft.com/windows/mediaplayer/en/download/'
        id='EMBED1' 
        name='mediaPlayer'
        showcontrols="1" 
        showtracker='1'
        showdisplay='1' 
        showstatusbar='1'
        fullScreen="false"
        src="http://www.localfriends.in/softwares/wmp11-windowsxp-x86-enu.exe" 
        autostart="1"
        loop="-1"
        width="480"
        height="460">
      </EMBED>
      </OBJECT>
         <br />
         &nbsp;<a href="AudiSongs.aspx"><span style="font-size: 14pt">Back</span></a><br />
         <span style="font-size: 8pt; font-family: Arial Narrow">
             <asp:Label ID="Label2" runat="server" Width="56px" Visible="False"></asp:Label><span
                 style="color: #0000cc;font-size: 12pt;">Send this song to  your Friends:</span><center>
                 <center><span style="color: #0000cc; font-size: 12pt;">Email:</span> <asp:TextBox ID="txtEmail" runat="server" Width="321px"></asp:TextBox>
          <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Send Invite"
              Width="102px" /></center>
      </center>
      <center>
          <asp:Label ID="Label3" runat="server" ForeColor="#FF0066" Width="274px" Font-Size="9pt"></asp:Label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
              ErrorMessage="Email Required" Width="95px"></asp:RequiredFieldValidator></center>
      </span></TD>
     </TR>
     </TABLE>
     </center>
      <center>
          &nbsp;</center>
  </div>
    </center>
</div>
     
     
</body> 

</html> 

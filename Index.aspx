<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="DefaultPage" title="Local Friends" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

function IMG1_onclick() {

}

function TABLE3_onclick() {

}

// ]]>
</script>

    <table cellpadding="20" cellspacing="0" style="border-right: #cccccc 1px solid; border-top: #cccccc 1px solid;
        border-left: #cccccc 1px solid; width: 100%; border-bottom: #cccccc 1px solid;
        height: 100%; font-size: 9pt;" id="TABLE1" onclick="return TABLE1_onclick()">
        <tr>
            <td rowspan="1" style="width: 20%; height: 318px">
    <asp:Image ID="Image1" runat="server" Height="97%" ImageUrl="~/Images/MainPic.jpg" Width="213px" BorderStyle="None" BorderWidth="2px" ImageAlign="Top" BorderColor="Transparent" /></td>
            <td style="width: 80%; height: 318px;">
                <span style="font-size: 10pt"><table border="0" cellpadding="0" style="width: 100%; position: static; height: 97%; text-align: left; font-size: 10pt;" cellspacing="0">
  <tr>
         <td style="font-size:90%; text-align: left; width: 80%;">
             <a href="Register.aspx" target ="_blank" >Join Now to make new friends</a>
             <br />Make new local friends near you!</td>
  
  </tr>
  <tr>
  <td style="font-size:90%; text-align: left; width: 80%;"><a href="" target="_blank"></a><a href="" target="_blank">
          Chat</a><br />
      Search New Friends .<br />
      Chat&nbsp; and message them!</td>
  </tr>
  <tr>
  <td style="font-size:90%; text-align: left; width: 80%;">
      <a href="MyVideos.aspx" target="_blank" >Videos</a><br />
   See millions of online video clips! <br/>
   Upload your videos and share with family and friends.<br/>
   Store your personal collections to acess it from anywhere.</td>
  </tr>
  
<tr>
  <td style="font-size:90%; text-align: left; width: 80%;">
      <a href="UploadClip.aspx" target="_blank">Upload videos</a><br />
      Upload your videos and share with family and friends.<br/>
You can upload any video file that will be displayed in
      flash player online.!
  </td>
  </tr>
</table>
            &nbsp;</span></td>
            <td style="width: 20%; height: 318px">
     <table id="TABLE2"  runat="server" align="right" frame="void" style="display: block; font-size: 9pt; z-index: 1; width: 71%;color: #000000;
              position: static;height: 96%;left:755px;top:149px; background-color: transparent; border-top-width: 5px; border-left-width: 5px; border-left-color: #cccccc; border-bottom-width: 5px; border-bottom-color: #cccccc; border-top-color: #cccccc; border-right-width: 5px; border-right-color: #cccccc;" cellpadding="0" cellspacing="0">
         <tr style="font-size: 9pt; color: #000000">
             <td colspan="2" style="table-layout: fixed; border-left-width: thin;
                 border-left-color: #cccccc;
                 border-bottom-width: thin; border-bottom-color: #cccccc; color: #000000; border-collapse: collapse;
                 height: 17px; text-align: center; border-right-width: thin; border-right-color: #cccccc; border-top-width: thin; border-top-color: #cccccc;">
                 <strong>&nbsp;
                     <table style="width: 149px; border-right: #cccccc thin groove; border-top: #cccccc thin groove; background-image: url(Images/placeholder-600.jpg); border-left: #cccccc thin groove; border-bottom: #cccccc thin groove;">
                         <tr>
                             <td colspan="2">
                                 <span style="font-size: 10pt; color: #0000cc">Login</span></td>
                         </tr>
                         <tr>
                             <td>
                                 <span style="color: #0000cc">Email
                          &nbsp; &nbsp;</span>
                                 <asp:TextBox ID="txtEmail" runat="server" Height="12px" width="116px" BackColor="#FFFFC0"></asp:TextBox></td>
                             <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                          ErrorMessage="Email Required!" Font-Size="6pt" >Required!</asp:RequiredFieldValidator></td>
                         </tr>
                         <tr>
                             <td>
                                 <span style="color: #0000cc">Password</span><asp:TextBox ID="txtPassword" runat="server" Height="12px" TextMode="Password" Width="114px" BackColor="#FFFFC0"></asp:TextBox></td>
                             <td>
                                 <asp:RequiredFieldValidator
                          ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required!"
                          Font-Size="6pt" >Required!</asp:RequiredFieldValidator></td>
                         </tr>
                         <tr>
                             <td colspan="2">
                      <asp:Button ID="btnSubmit" runat="server" Font-Size="10pt" Height="22px" Text="Sign In" BackColor="Silver" Width="69px" BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px"/></td>
                         </tr>
                         <tr>
                             <td colspan="2">
                      <asp:Label ID="lblMessage2" runat="server" Font-Size="8pt" ForeColor="#FF3366"></asp:Label>
                      <asp:Label ID="lblMessage" runat="server" Font-Size="8pt" ForeColor="#FF3366"></asp:Label></td>
                         </tr>
                     </table>
                     </strong>
             </td>
         </tr>
              <tr style="font-size: 12pt">
                  <td colspan="2" style="text-align: center; height: 102px; border-top-width: 1px; border-left-width: 1px; border-left-color: #6699cc; border-bottom-width: 1px; border-bottom-color: #6699cc; border-top-color: #6699cc; border-right-width: 1px; border-right-color: #6699cc;">
                     <span style="font-size: 10pt">
                         <strong>
                         Not a member yet?<br />
                         </strong>
                          </span><a href="Register.aspx"><strong><span style="font-size: 10pt">Join Now</span></strong></a><br />
                      <br />
                      <span style="font-size: 10pt">
                      If you have forgot password, you can retrieve it in most easy way.<br />
                      </span>
                      <a href="Forgot.aspx"><span style="font-size: 10pt">Forgot password?Click Here</span></a><br />
                  </td>
              </tr>
  <tr style="font-size: 12pt">
                  <td colspan="2" style="text-align: center; border-top-width: 1px; border-left-width: 1px; border-left-color: #6699cc; border-bottom-width: 1px; border-bottom-color: #6699cc; border-top-color: #6699cc; border-right-width: 1px; border-right-color: #6699cc;">
                      <span>
                          <br />
                          <span style="font-size: 10pt">
                          Looking for Videos ?<br />
                          Wants to see them online ?<br />
                          Wants to upload your own to show to friends?<br />
                          </span>
                          <a href="MyVideos.aspx" target="_blank"><span style="font-size: 10pt">Click here!</span></a><br />
                          </span></td>
              </tr>
		</table>
            </td>
        </tr>
    </table>
                  <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="10pt" Height="1px"
                              ShowMessageBox="True" ShowSummary="False" Width="214px" />
    <table style="left: 4%; width: 50%; position: absolute; top: 5%" id="TABLE3" onclick="return TABLE3_onclick()">
        <tr>
            <td style="text-align: left">
                <span style="font-size: 36pt; color: #ff0066; font-family: Mistral;"><strong>Local Friends</strong></span></td>
        </tr>
    </table>
</asp:Content>


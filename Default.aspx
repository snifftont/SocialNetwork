<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" title="Local Friends" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <table id="TABLE3" onclick="return TABLE3_onclick()" style="left: 4%; width: 50%;
        position: absolute; top: 5%">
        <tr>
            <td style="text-align: left">
                <span style="font-size: 36pt; color: #ff0066; font-family: Mistral"><strong>Local Friends</strong></span></td>
        </tr>
    </table>
    <table id="TABLE1" cellpadding="20" cellspacing="0" onclick="return TABLE1_onclick()"
        style="border-right: #cccccc 1px solid; border-top: #cccccc 1px solid; font-size: 9pt;
        border-left: #cccccc 1px solid; width: 100%; border-bottom: #cccccc 1px solid;
        height: 100%">
        <tr>
            <td rowspan="1" style="width: 20%; height: 318px">
                <asp:Image ID="Image1" runat="server" BorderColor="Transparent" BorderStyle="None" BorderWidth="2px"
                    Height="97%" ImageAlign="Top" ImageUrl="~/Images/MainPic.jpg" Width="221px" /></td>
            <td style="width: 80%; height: 315px">
                <span style="font-size: 10pt">&nbsp;</span><table border="0" cellpadding="0" cellspacing="0"
                    style="font-size: 10pt; width: 110%; position: static; height: 97%; text-align: left">
                    <tr>
                        <td style="font-size: 90%; width: 80%; text-align: left">
                            <a href="Register.aspx">Join Now to make new friends</a>
                            <br />
                Make new local friends near you!</td>
                    </tr>
                    <tr>
                        <td style="font-size: 90%; width: 80%; text-align: left">
                            <a href=""></a><a href="">
                                Chat</a><br />
                Search New Friends .<br />
                Chat&nbsp; and message them!</td>
                    </tr>
                    <tr>
                        <td style="font-size: 90%; width: 80%; text-align: left">
                            <a href="MyVideos.aspx">Videos</a><br />
                See millions of online video clips!
                            <br />
                            Upload your videos and share with family and friends.<br />
                Store your personal collections to acess it from anywhere.</td>
                    </tr>
                    <tr>
                        <td style="font-size: 90%; width: 80%; text-align: left">
                            <a href="UploadClip.aspx">Upload videos</a><br />
                            Upload your videos and share with family and friends.<br />
                You can upload any video file that will be displayed in flash player online.!
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 20%; height: 318px">
                <table id="TABLE2" runat="server" align="right" cellpadding="0" cellspacing="0" frame="void"
                    style="border-top-width: 5px; display: block; border-left-width: 5px; font-size: 9pt;
                    z-index: 1; border-left-color: #cccccc; left: 755px; border-bottom-width: 5px;
                    border-bottom-color: #cccccc; width: 71%; color: #000000; border-top-color: #cccccc;
                    position: static; top: 149px; height: 96%; background-color: transparent; border-right-width: 5px;
                    border-right-color: #cccccc">
                    <tr style="font-size: 9pt; color: #000000">
                        <td colspan="2" style="border-top-width: thin; table-layout: fixed; border-left-width: thin;
                            border-left-color: #cccccc; border-bottom-width: thin; border-bottom-color: #cccccc;
                            color: #000000; border-top-color: #cccccc; border-collapse: collapse; height: 17px;
                            text-align: center; border-right-width: thin; border-right-color: #cccccc">
                            <strong>&nbsp;
                                <table style="border-right: #cccccc thin groove; border-top: #cccccc thin groove;
                                    background-image: url(Images/placeholder-600.jpg); border-left: #cccccc thin groove;
                                    width: 149px; border-bottom: #cccccc thin groove">
                                    <tr>
                                        <td colspan="2">
                                            <span style="font-size: 10pt; color: #0000cc">Login</span></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span style="color: #0000cc">Email &nbsp; &nbsp;</span>
                                            <asp:TextBox ID="txtEmail" runat="server" BackColor="#FFFFC0" Height="12px" Width="116px"></asp:TextBox></td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                                                ErrorMessage="Email Required!" Font-Size="6pt">Required!</asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr style="color: #000000">
                                        <td>
                                            <span style="color: #0000cc">Password</span><asp:TextBox ID="txtPassword" runat="server"
                                                BackColor="#FFFFC0" Height="12px" TextMode="Password" Width="114px"></asp:TextBox></td>
                                        <td style="color: #000000">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                                                ErrorMessage="Password Required!" Font-Size="6pt">Required!</asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="btnSubmit" runat="server" BackColor="Silver" BorderColor="Silver"
                                                BorderStyle="Solid" BorderWidth="1px" Font-Size="10pt" Height="22px" Text="Sign In"
                                                Width="69px" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="lblMessage2" runat="server" Font-Size="8pt" ForeColor="#FF3366"></asp:Label><span
                                                style="font-size: 10pt"> </span>
                                            <asp:Label ID="lblMessage" runat="server" Font-Size="8pt" ForeColor="#FF3366"></asp:Label></td>
                                    </tr>
                                </table>
                            </strong>
                        </td>
                    </tr>
                    <tr style="font-size: 10pt; color: #000000">
                        <td colspan="2" style="border-top-width: 1px; border-left-width: 1px; border-left-color: #6699cc;
                            border-bottom-width: 1px; border-bottom-color: #6699cc; border-top-color: #6699cc;
                            height: 102px; text-align: center; border-right-width: 1px; border-right-color: #6699cc">
                            <span>Not a member yet?<br />
                            </span><a href="Register.aspx"><span><strong>Join Now</strong></span></a><br />
                            <br />
                            <span style="font-size: 10pt">If you have forgot password, you can retrieve it in most
                                easy way.<br />
                            </span><a href="Forgot.aspx"><span style="font-size: 10pt">Forgot password?Click Here</span></a><br />
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td colspan="2" style="border-top-width: 1px; border-left-width: 1px; border-left-color: #6699cc;
                            border-bottom-width: 1px; border-bottom-color: #6699cc; border-top-color: #6699cc;
                            text-align: center; border-right-width: 1px; border-right-color: #6699cc">
                            <span>
                                <br />
                                <span style="font-size: 10pt">Looking for Videos ?<br />
                                    Wants to see them online ?<br />
                                    Wants to upload your own to show to friends?<br />
                                </span><a href="MyVideos.aspx"><span style="font-size: 10pt">Click here!</span></a><br />
                            </span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Inbox.aspx.vb" Inherits="Inbox" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <table id="TABLE1" bgcolor="gainsboro" bordercolor="darkgray" cellpadding="1" cellspacing="15"
        frame="box" onclick="return TABLE1_onclick()" style="border-right: #cccccc 30px solid;
        border-top: #cccccc 30px solid; border-left: #cccccc 30px solid; width: 100%;
        color: #000000; border-bottom: #cccccc 30px solid; height: 100%; background-color: transparent">
        <tr>
            <td align="center" nowrap="nowrap" style="text-align: center; width: 150px;">
                <span style="font-size: 14pt; vertical-align: bottom; letter-spacing: 1px; text-align: center">
    Hi!<asp:Label ID="lblUserName" runat="server"></asp:Label></span></td>
            <td align="center" colspan="1" style="width: 700px; height: 16px; text-align: center">
                <strong>Messages Received</strong></td>
        </tr>
        <tr>
            <td align="center" rowspan="4" style="width: 150px; text-align: center;" valign="top">
                <center>
                    <asp:GridView ID="gvInbox" runat="server" DataKeyNames="MsgRID" AutoGenerateColumns ="False" Width="150px" RowStyle-Height ="15"  Height="30px" Font-Size="10pt" Font-Names="Arial" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PagerSettings-Mode="NextPreviousFirstLast" HorizontalAlign="Center"  >
                <PagerSettings NextPageText ="Next" FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast" PreviousPageText="Previous" />
                <Columns>
                     <asp:TemplateField HeaderText="From: Subject">
            <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" CommandName="Select" Runat="Server" BackColor="#cccccc" >
           <%#Eval("UserName")%>:<%#Eval("MsgSub")%>
            </asp:LinkButton>
            </ItemTemplate>
                         
        </asp:TemplateField>
                        
                       
                    </Columns>
                    <RowStyle Height="20px" HorizontalAlign="Left" BackColor="White" ForeColor="#330099" Width="150px" />
                    <AlternatingRowStyle BorderStyle="Outset" BorderWidth="2px" />
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
                    &nbsp;</center>
                <center style="vertical-align: bottom; text-align: center">
                    <span style="font-size: 9pt"><a href="ProfileCreated.aspx"><span style="font-size: 12pt">
                    </span></a></span>
                </center>
                <span style="vertical-align: middle; color: #0000ff; text-align: left; text-decoration: underline">
                </span>
            </td>
            <td align="center" colspan="1" rowspan="4" style="width: 700px; text-align: center; height: 446px;"
                valign="middle">
                <asp:Label ID="lblMessageHelp" runat="server" ForeColor="#006600" Text="Click on message on left to see the mesage details."
                    Width="318px"></asp:Label><br />
                <asp:DetailsView ID="gvInbox2" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow"
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None"
                    Height="350px" Width="700px">
                    <FooterStyle BackColor="Tan" />
                    <RowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <Fields>
                        <asp:TemplateField>
                            <ItemTemplate>
                               <b > From:<%#Eval("UserName")%></b><br />
                                <b >Subject:<%#Eval("MsgSub")%></b><br /><br />
                                <b >Message:</b><%#Eval("Message")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:DetailsView>
                &nbsp;<asp:Label ID="lblSub" runat="server" Visible="False"></asp:Label>
                <asp:TextBox ID="txtSub" runat="server" Visible="False" Width="217px"></asp:TextBox><br />
                <asp:Label ID="lblReply" runat="server" Visible="False"></asp:Label>
                <asp:TextBox ID="txtReply" runat="server" Height="36px" TextMode="MultiLine" Visible="False"
                    Width="100%"></asp:TextBox><br />
                <asp:Button ID="btnReply" runat="server" BackColor="Silver" BorderColor="Silver"
                    BorderStyle="Groove" CausesValidation="False" Text="Reply" Visible="False" Width="83px" />
                <asp:Button ID="btnSendREply" runat="server" BackColor="Silver" BorderColor="Silver"
                    BorderStyle="Groove" CausesValidation="False" Text="Send Reply" Visible="False" /></td>
        </tr>
        <tr style="color: #0000ff; text-decoration: underline">
        </tr>
        <tr style="font-size: 10pt">
        </tr>
        <tr>
        </tr>
    </table>
    <asp:Label ID="lblSender" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblSessionUser" runat="server"></asp:Label>
    <asp:Label ID="lblSenderID" runat="server"></asp:Label>
    <asp:Label ID="lblReceiverID" runat="server"></asp:Label>
    &nbsp;
    <asp:Label ID="lblsentMsgNumber" runat="server"></asp:Label>
    <asp:Label ID="lblMsgRID" runat="server"></asp:Label>
    <asp:Label ID="Label3" runat="server"></asp:Label><br />
                    
</asp:Content>


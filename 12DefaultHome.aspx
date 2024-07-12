<%@ Page Language="VB" MasterPageFile="~/Master.master"  EnableSessionState="True"   AutoEventWireup="false" CodeFile="12DefaultHome.aspx.vb" Inherits="VideoStreams" title="Local Friends Media Streams" %>
<%--<%@ Register Src="SearchSongs.ascx" TagName="SearchSongs" TagPrefix="uc2" %>
--%><asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <div><center >
    <span style="font-size: 14pt; color: #660033">
    </span>&nbsp;</center></div>
    <div><center >
        <table style="width: 100%; height: 100%; border-right: #cccccc 30px solid; border-top: #cccccc 30px solid; border-left: #cccccc 30px solid; border-bottom: #cccccc 30px solid; background-color: transparent; color: #000000;" bgcolor="gainsboro" bordercolor="darkgray" cellpadding="1" cellspacing="15" frame="box" id="TABLE1"">
            <tr>
                <td align="center" style="height: 16px; text-align: center; width: 159px;" nowrap="noWrap">
                    <span style="font-size: 14pt; vertical-align: bottom; letter-spacing: 1px; text-align: center;">
                        Hi!<asp:Label ID="Label1" runat="server" ForeColor="Black" Font-Size="Smaller"></asp:Label></span></td>
                <td align="center" colspan="2" style="height: 16px; text-align: left; width: 437px;">
                    <span style="font-size: 12pt; width: 437px;"> 
                        <asp:Button ID="btnInbox" runat="server" BackColor="Linen" BorderColor="Linen"
                            BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" Text="Inbox" Width="62px" Height="100%" />
                        &nbsp;
                        &nbsp; 
                        <asp:Button ID="btnSearch" runat="server" BackColor="Linen" BorderColor="Linen"
                            BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" Text="Search"
                            Width="60px" Height="100%" />&nbsp;
                        <asp:Button ID="btnChat" runat="server" BackColor="Linen" BorderColor="Linen" BorderStyle="Solid"
                            BorderWidth="1px" CausesValidation="False" Text="Chat" Width="64px" Height="100%" />
                        &nbsp;&nbsp;<asp:Button ID="btnMyVideos" runat="server" BackColor="Linen"
                                BorderColor="Linen" BorderStyle="Groove" BorderWidth="1px" CausesValidation="False"
                                Text="My Videos" Width="74px" />&nbsp;&nbsp; 
                        <asp:LinkButton ID="btnAdmin" runat="server" BackColor="Linen" BorderColor="Linen"
                            BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" ForeColor="#000000"
                            Visible="False" Width="57px">Manage</asp:LinkButton>
                        <asp:LinkButton ID="btnMass" runat="server" BackColor="Linen" BorderColor="Linen"
                            BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" ForeColor="#000000"
                            Visible="False">mEmails</asp:LinkButton>&nbsp;</span></td>
                <td align="center" colspan="1" style="height: 16px; text-align: center">
                    <strong> Messages Received</strong></td>
            </tr>

            <tr>
                <td align="center" style="height: 186px; text-align: center; width: 159px;left:10px"><center >
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="118px" Width="122px" />&nbsp;</center>
                    <center style="vertical-align: bottom; text-align: center">
                        <span style="font-size: 9pt">
                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="LightSteelBlue" BorderColor="LightSteelBlue"
                                BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" Width="96px" ForeColor="#000000" Font-Bold="True">Upload Photo</asp:LinkButton><a href="ProfileCreated.aspx"><span style="font-size: 12pt"></span></a></span></center>
                </td>
                <td align="center" colspan="2" style="text-align: center; width: 437px;" rowspan="4">
                   
                   
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" 
                        DataSourceID="SqlDataSource1" Height="50px" Width="500px">
                        <Fields>
                        <asp:BoundField DataField="Membership" HeaderText="Membership" SortExpression="Membership" ReadOnly ="True"  >
                            <ControlStyle ForeColor="#006633" />
                        </asp:BoundField>
                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                            <asp:BoundField DataField="Locality" HeaderText="Locality" SortExpression="Locality" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                            <asp:BoundField DataField="About" HeaderText="About me" SortExpression="About" />
                            <asp:BoundField DataField="Herefor" HeaderText="Here for" SortExpression="Herefor" />
                            <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
                            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                            <asp:BoundField DataField="Profession" HeaderText="Profession" SortExpression="Profession" />
                            <asp:BoundField DataField="ContactEmail" HeaderText="Contact Email" SortExpression="ContactEmail" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Yahoo" HeaderText="Yahoo" SortExpression="Yahoo" />
                            <asp:BoundField DataField="GTalk" HeaderText="GTalk" SortExpression="GTalk" />
                             
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                        <RowStyle HorizontalAlign="Left" />
                    </asp:DetailsView>
                    &nbsp;<a href="http://www.localfriends.in/ShowMyVideos.aspx?FileID=Stream/VideoSongs/Titanic-Kiss+Sceene-1.wmv"><span style="font-size: 10pt"></span></a>&nbsp;<a href="/Videos/Default.aspx"><span style="font-size: 12pt"></span></a><span style="font-size: 10pt; vertical-align: top; color: #0000ff; text-align: center;
                        text-decoration: underline"></span></td>
                <td align="center" colspan="1" style="text-align: center" rowspan="4">
                   
                    <asp:GridView ID="gvInbox" runat="server" DataKeyNames="MsgRID" AutoGenerateColumns ="False" Width="100%" RowStyle-Height ="15"  Height="348px" Font-Size="10pt" Font-Names="Arial" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4"  HorizontalAlign="Center" >
                
                <Columns>
                     <asp:TemplateField HeaderText="Recent Messages">
            <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" CommandName="Select" Runat="Server" BackColor="#cccccc">
           <%#Eval("UserName")%>:<%#Eval("MsgSub")%>
            </asp:LinkButton>
            </ItemTemplate>
                         
        </asp:TemplateField>
                        
                       
                    </Columns>
                    <RowStyle Height="20px" HorizontalAlign="Center" BackColor="White" ForeColor="#330099" />
                    <AlternatingRowStyle BorderStyle="Outset" BorderWidth="2px" />
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                    
                    
                 
                </td>
            </tr>
            <tr style="color: #0000ff; text-decoration: underline">
                <td style="height: 59px; text-align: center; width: 159px;" align="center">
                    <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#C0C000" BorderColor="#C0C000"
                        BorderStyle="Solid" BorderWidth="0px" CausesValidation="False" ForeColor="Black"
                        Width="100%" Height="30px" Font-Size="14pt" Visible="False" ToolTip="Click Here ti Upgrade to access full features !">Upgrade Membership</asp:LinkButton></td>
            </tr>
            <tr style="font-size: 10pt">
                <td style="height: 49px; text-align: center; vertical-align: middle; width: 159px;">
                    </td>
            </tr>
            <tr>
                <td style="height: 67px; text-align: center; width: 159px;" nowrap="noWrap">
                    <span style="vertical-align: middle; color: #0000ff; text-align: left;
                        text-decoration: underline"></span></td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
            SelectCommand="SELECT [ID],[Membership], [UserName], [Password], [Sex], [Age], [Day], [Month], [Year], [Locality], [City], [Country], [About], [Herefor], [School], [College], [Profession], [ContactEmail], [Mobile], [Yahoo], [GTalk] FROM [Users] WHERE ([Email] = @Email)" 
             DataSourceMode="DataSet"
             UpdateCommand ="UPDATE USERS SET [UserName]=@UserName,[Sex]=@Sex,[Age]=@Age,[Locality]=@Locality,[City]=@City,[Country]=@Country,[About]=@About,[Herefor]=@Herefor,[School]=@School,[College]=@College,[Profession]=@Profession,[ContactEmail]=@ContactEmail,[Mobile]=@Mobile,[Yahoo]=@Yahoo,[GTalk]=@GTalk WHERE ([ID] =@ID)">
             <SelectParameters>
                <asp:SessionParameter DefaultValue="Email" Name="Email" SessionField="Email" Type="String" />
            </SelectParameters>
             <UpdateParameters >
                <asp:Parameter Type ="STRING" Name ="UserName" />
                <asp:Parameter Type ="STRING" Name ="Sex" />
                <asp:Parameter Type ="STRING" Name ="Age" />
                <asp:Parameter Type ="STRING" Name ="Locality" />
                <asp:Parameter Type ="STRING" Name ="City" /> 
                <asp:Parameter Type ="STRING" Name ="Country" /> 
                <asp:Parameter Type ="STRING" Name ="About" />
                <asp:Parameter Type ="STRING" Name ="HereFor" /> 
                <asp:Parameter Type ="STRING" Name ="School" /> 
                <asp:Parameter Type ="STRING" Name ="College" /> 
                <asp:Parameter Type ="STRING" Name ="Profession" /> 
                <asp:Parameter Type ="STRING" Name ="ContactEmail" /> 
                <asp:Parameter Type ="STRING" Name ="Mobile" /> 
                <asp:Parameter Type ="STRING" Name ="Yahoo" /> 
                <asp:Parameter Type ="STRING" Name ="GTalk" /> 
                <asp:Parameter Type ="STRING" Name ="MSN" /> 
                          
               </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="PhotoDS" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>"
        SelectCommand="SELECT * FROM [Photo] WHERE ([FKCategoryId] = @FKCategoryId) ORDER BY [FKCategoryId]">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="FKCategoryId" QueryStringField="PKCategoryID"
                Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    </center></div>
    <asp:Label ID="txtID" runat="server" Font-Size="8pt"></asp:Label>
</asp:Content>


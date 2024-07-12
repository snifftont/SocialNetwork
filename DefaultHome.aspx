<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="DefaultHome.aspx.vb" Inherits="DefaultHome" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <div>
        <center>
            <span style="font-size: 14pt; color: #660033"></span>&nbsp;</center>
    </div>
    <div>
        <center>
            <table id="TABLE1" bgcolor="gainsboro" bordercolor="darkgray" cellpadding="1" cellspacing="15"
                frame="box" style="border-right: #cccccc 30px solid; border-top: #cccccc 30px solid;
                border-left: #cccccc 30px solid; width: 100%; color: #000000; border-bottom: #cccccc 30px solid;
                height: 100%; background-color: transparent">
           
            <tr>
                <td align="center" nowrap="nowrap" style="width: 159px; height: 16px; text-align: center">
                    <span style="font-size: 14pt; vertical-align: bottom; letter-spacing: 1px; text-align: center">
                        Hi!<asp:Label ID="Label1" runat="server" Font-Size="Smaller" ForeColor="Black"></asp:Label></span></td>
                <td align="center" colspan="2" style="width: 437px; height: 16px; text-align: center">
                    <span style="font-size: 12pt; width: 437px">
                        <asp:Button ID="btnInbox" runat="server" BackColor="Linen" BorderColor="Linen" BorderStyle="Solid"
                            BorderWidth="1px" CausesValidation="False" Height="100%" Text="Inbox" Width="62px" />
                        &nbsp; &nbsp;
                        <asp:Button ID="btnSearch" runat="server" BackColor="Linen" BorderColor="Linen" BorderStyle="Solid"
                            BorderWidth="1px" CausesValidation="False" Height="100%" Text="Search" Width="60px" />&nbsp;
                        <asp:Button ID="btnChat" runat="server" BackColor="Linen" BorderColor="Linen" BorderStyle="Solid"
                            BorderWidth="1px" CausesValidation="False" Height="100%" Text="Chat" Width="64px" />
                        &nbsp;&nbsp;<asp:Button ID="btnMyVideos" runat="server" BackColor="Linen" BorderColor="Linen"
                            BorderStyle="Groove" BorderWidth="1px" CausesValidation="False" Text="My Videos"
                            Width="74px" />
                        &nbsp;
                        <asp:LinkButton ID="btnAdmin" runat="server" BackColor="Linen" BorderColor="Linen"
                            BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" ForeColor="#000000"
                            Visible="False" Width="57px">Manage</asp:LinkButton>
                        <asp:LinkButton ID="btnMass" runat="server" BackColor="Linen" BorderColor="Linen"
                            BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" ForeColor="#000000"
                            Visible="False">mEmails</asp:LinkButton>&nbsp;</span></td>
                <td align="center" colspan="1" style="height: 16px; text-align: center">
                    <strong>Messages Received</strong></td>
            </tr>
            <tr>
                <td align="center" style="left: 10px; width: 159px; height: 186px; text-align: center">
                    <center><a href='<%# Eval("Filename", "./Gallery/{0}") %>' target="_blank">
            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("Filename", "~\Gallery\{0}")%>'
                Width="50px" ToolTip='<%# Eval("Memo") %>'/>
            </a>
                        &nbsp;</center>
                    <center style="vertical-align: bottom; text-align: center">
                        <span style="font-size: 9pt">
                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="LightSteelBlue" BorderColor="LightSteelBlue"
                                BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" Font-Bold="True"
                                ForeColor="#000000" Width="96px">Upload Photo</asp:LinkButton><a href="ProfileCreated.aspx"><span
                                    style="font-size: 12pt"></span></a></span></center>
                </td>
                <td align="center" colspan="2" rowspan="4" style="width: 437px; text-align: center">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID"
                        DataSourceID="SqlDataSource1" Height="50px" Width="500px">
                        <Fields>
                            <asp:BoundField DataField="Membership" HeaderText="Membership" ReadOnly="True" SortExpression="Membership">
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
                    &nbsp;<a href="http://www.localfriends.in/ShowMyVideos.aspx?FileID=Stream/VideoSongs/Titanic-Kiss+Sceene-1.wmv"><span
                        style="font-size: 10pt"></span></a>&nbsp;<a href="/Videos/Default.aspx"><span style="font-size: 12pt"></span></a><span
                            style="font-size: 10pt; vertical-align: top; color: #0000ff; text-align: center;
                            text-decoration: underline"></span></td>
                <td align="center" colspan="1" rowspan="4" style="text-align: center">
                    <asp:GridView ID="gvInbox" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MsgRID"
                        Font-Names="Arial" Font-Size="10pt" Height="348px" HorizontalAlign="Center" RowStyle-Height="15"
                        Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="Recent Messages">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="Server" BackColor="#cccccc" CommandName="Select">
           <%#Eval("UserName")%>:<%#Eval("MsgSub")%>
            </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle BackColor="White" ForeColor="#330099" Height="20px" HorizontalAlign="Center" />
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
                <td align="center" style="width: 159px; height: 59px; text-align: center">
                    <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#C0C000" BorderColor="#C0C000"
                        BorderStyle="Solid" BorderWidth="0px" CausesValidation="False" Font-Size="14pt"
                        ForeColor="Black" Height="30px" ToolTip="Click Here ti Upgrade to access full features !"
                        Visible="False" Width="100%">Upgrade Membership</asp:LinkButton></td>
            </tr>
            <tr style="font-size: 10pt">
                <td style="vertical-align: middle; width: 159px; height: 49px; text-align: center">
                </td>
            </tr>
            <tr>
                <td nowrap="nowrap" style="width: 159px; height: 67px; text-align: center">
                    <span style="vertical-align: middle; color: #0000ff; text-align: left; text-decoration: underline">
                    </span>
                </td>
            </tr>
            </TABLE><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
                DataSourceMode="DataSet" SelectCommand="SELECT [ID],[Membership], [UserName], [Password], [Sex], [Age], [Day], [Month], [Year], [Locality], [City], [Country], [About], [Herefor], [School], [College], [Profession], [ContactEmail], [Mobile], [Yahoo], [GTalk] FROM [Users] WHERE ([Email] = @Email)"
                UpdateCommand="UPDATE USERS SET [UserName]=@UserName,[Sex]=@Sex,[Age]=@Age,[Locality]=@Locality,[City]=@City,[Country]=@Country,[About]=@About,[Herefor]=@Herefor,[School]=@School,[College]=@College,[Profession]=@Profession,[ContactEmail]=@ContactEmail,[Mobile]=@Mobile,[Yahoo]=@Yahoo,[GTalk]=@GTalk WHERE ([ID] =@ID)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="Email" Name="Email" SessionField="Email" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="STRING" />
                    <asp:Parameter Name="Sex" Type="STRING" />
                    <asp:Parameter Name="Age" Type="STRING" />
                    <asp:Parameter Name="Locality" Type="STRING" />
                    <asp:Parameter Name="City" Type="STRING" />
                    <asp:Parameter Name="Country" Type="STRING" />
                    <asp:Parameter Name="About" Type="STRING" />
                    <asp:Parameter Name="HereFor" Type="STRING" />
                    <asp:Parameter Name="School" Type="STRING" />
                    <asp:Parameter Name="College" Type="STRING" />
                    <asp:Parameter Name="Profession" Type="STRING" />
                    <asp:Parameter Name="ContactEmail" Type="STRING" />
                    <asp:Parameter Name="Mobile" Type="STRING" />
                    <asp:Parameter Name="Yahoo" Type="STRING" />
                    <asp:Parameter Name="GTalk" Type="STRING" />
                    <asp:Parameter Name="MSN" Type="STRING" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="PhotoDS" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>"
                SelectCommand="SELECT * FROM [Photo] WHERE ([FKCategoryId] = @FKCategoryId) ORDER BY [FKCategoryId]">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="FKCategoryId" QueryStringField="PKCategoryID"
                        Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>
    </div>
    <asp:Label ID="txtID" runat="server" Font-Size="8pt"></asp:Label>
   
</asp:Content>


<%@ Control Language="VB" AutoEventWireup="false" CodeFile="SearchSongs.ascx.vb" Inherits="SearchSongs"  %>
<div>
                <asp:GridView ID="GridView2" runat="server" DataKeyNames="FileID" AutoGenerateColumns ="False" Width="100%" RowStyle-Height ="15"  Height="348px" Font-Size="12pt" Font-Names="Arial" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PagerSettings-Mode="NextPreviousFirstLast"  >
                <PagerSettings FirstPageText="First" />
                <PagerSettings LastPageText ="Last" />
                <PagerSettings PreviousPageText ="Previous" />
                <PagerSettings NextPageText ="Next" />
                   
                    <Columns>
                     <asp:TemplateField HeaderText="Click on a video to play">
            <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" CommandName="Select" Runat="Server" BackColor="#cccccc">
           <%-- <%#Eval("FileID")%>------ --%><%#Eval("Tag")%>
            </asp:LinkButton>
            </ItemTemplate>
                         <FooterTemplate>
                             Use numbers to navigate to desired pages
                         </FooterTemplate>
        </asp:TemplateField>
                        
                       
                    </Columns>
                    <RowStyle Height="20px" HorizontalAlign="Left" BackColor="White" ForeColor="#330099" />
                    <AlternatingRowStyle BorderStyle="Outset" BorderWidth="2px" />
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
    &nbsp;&nbsp;
    <br />
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>"
        SelectCommand="SELECT * FROM [Videos] ORDER BY [FileID] DESC"></asp:SqlDataSource>
</div>


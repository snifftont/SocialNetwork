<%@ Control Language="VB" AutoEventWireup="false" CodeFile="SearchVideo.ascx.vb" Inherits="SearchVideo" %>
&nbsp;
<br />
<div><center >
    <span style="color: #3300ff; font-size: 8pt;"><strong> &nbsp;</strong></span><table style="width: 604px">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
    BackColor="#00CCFF" BorderColor="#00CCFF" BorderStyle="None" BorderWidth="0px"
    CellPadding="8" DataKeyNames="FileID" Font-Size="10pt" Height="384px" Width="725">
    <FooterStyle BackColor="#00CCFF" ForeColor="#330099" />
    <Columns>
        <asp:BoundField DataField="FileID" HeaderText="Local Friends' Video Clips" SortExpression="FileID">
            <ItemStyle Width="80%" Wrap="False" BorderStyle="Outset" HorizontalAlign="Left" />
            <ControlStyle BorderWidth="100px" Width="100px" BorderStyle="Outset" />
        </asp:BoundField>
        <asp:CommandField ButtonType="Button" HeaderImageUrl="~/media.jpg" SelectText="Play"
            ShowSelectButton="True">
            <ControlStyle BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" Width="100px" />
        </asp:CommandField>
    </Columns>
    <RowStyle BackColor="#00CCFF" ForeColor="Black" BorderColor="#E0E0E0" HorizontalAlign="Left" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <PagerStyle BackColor="#00CCFF" ForeColor="#330099" HorizontalAlign="Center" />
    <HeaderStyle BackColor="#00CCFF" Font-Bold="True" ForeColor="#FFFFCC" />
</asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
        </td>
    </tr>
</table>
</center></div>
&nbsp;

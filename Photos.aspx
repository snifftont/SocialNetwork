<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Photos.aspx.vb" Inherits="Photos" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>

    <br />
    &nbsp;<table id="TABLE1" onclick="return TABLE1_onclick()" style="width: 939px; height: 420px">
        <tr>
            <td style="width: 183px">
            </td>
            <td style="width: 176px">
            </td>
            <td style="width: 171px">
            </td>
        </tr>
        <tr>
            <td style="width: 183px; text-align: left">
                <asp:GridView ID="dgSearch" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName"
        EmptyDataText=" No Answer" Font-Size="10pt" Height="96px" Width="75%" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="Search Results">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="Server" CommandName="Select">
              <%# Eval("UserName") %>, <%# Eval("Age") %>, <%#Eval("Sex")%> , <%# Eval("City") %>,  <%#Eval("Country")%>
            </asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
           </Columns>
        <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        <EditRowStyle BorderStyle="None" BorderWidth="2px" HorizontalAlign="Right" />
    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>"
                    SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            </td>
            <td style="width: 176px; text-align: center">
                <asp:ImageButton ID="btnPic" runat="server" BackColor="#FFFF80" BorderColor="Yellow"
                    BorderStyle="Solid" Height="112px" Width="136px" ImageUrl="~/Images/placeholder-600.jpg" /></td>
            <td style="width: 171px">
                <asp:DetailsView ID="gvInbox2" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow"
                    BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None"
                    Height="350px" Width="238px">
                    <FooterStyle BackColor="Tan" />
                    <RowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">
            </td>
            <td style="width: 176px">
            </td>
            <td style="width: 171px">
            </td>
        </tr>
    </table>
    &nbsp; &nbsp;&nbsp;
</asp:Content>


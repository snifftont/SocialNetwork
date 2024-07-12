<%@ Page Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="MemberVideos.aspx.vb" Inherits="MemberVideos" title="Member's Videos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <asp:Label ID="Label1" runat="server" Width="400px" BackColor="#990000" Font-Size="16pt" ForeColor="White"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="FileID" AutoGenerateColumns="False" CellPadding="4" Width="398px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" >
    
         <Columns>
            <asp:TemplateField>
            <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" CommandName="Select" Runat="Server" BackColor="#cccccc">
            <%--<%#Eval("FileID")%>...... --%><%#Eval("Tag")%>
            </asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
    </Columns>
        <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" BackColor="White" ForeColor="#330099" />
        <EditRowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    </asp:GridView>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    &nbsp;&nbsp;
</asp:Content>


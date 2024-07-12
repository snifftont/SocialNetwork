<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GV.aspx.vb" Inherits="GV" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<table style="width: 670px">
            <tr>
                <td style="width: 324px">
                </td>
            </tr>
            <tr>
                <td style="width: 324px">
        <asp:GridView ID="MasterGridView" runat="server" 
        DataSourceID="MasterSource"
        AutoGenerateColumns="False"
        DataKeyNames="UserName" Height="219px" Width="665px">
        <Columns>
        <asp:TemplateField HeaderText="Employee">
            <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" CommandName="Select" Runat="Server">
              <%# Eval("UserName") %>, <%# Eval("Age") %>, <%# Eval("Sex") %>, <%# Eval("City") %>
            </asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
            <asp:ImageField DataImageUrlField="Picture" DataImageUrlFormatString="Photo of {0}">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
        </Columns>

        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 324px">
                </td>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="MasterSource" EnableCaching="true"  CacheDuration="600" runat="server" ConnectionString="<%$ ConnectionStrings:CompanyConnectionString %>"
            SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        &nbsp;

    </form>
</body>
</html>

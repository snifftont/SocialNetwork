Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Security
Imports System.GC
Partial Class SearchSongs
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim conn As New SqlConnection
        'Dim cmd As New SqlCommand
        'Dim rdr As SqlDataReader
        'conn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        'cmd.CommandText = "SELECT  TOP 100 FileID,Tag From Videos ORDER BY FileID Desc"
        'cmd.CommandType = CommandType.Text
        'cmd.Connection = conn
        'conn.Open()
        'rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection)
        'Me.GridView2.DataSource = rdr
        'GridView2.DataBind()
        'cmd.Dispose()
        'conn.Dispose()

        
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.SelectedIndexChanged
        Dim url As String = "ShowFlv.aspx?FileID=" & (GridView2.SelectedDataKey).Value
        Session("FileID") = (GridView2.SelectedDataKey).Value
        Session("Tag") = GridView2.SelectedRow.Cells(0)
        Response.Redirect(url)

    End Sub
End Class

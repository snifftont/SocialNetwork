Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Partial Class SearchVideo
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        Dim rdr As SqlDataReader
        conn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        cmd.CommandText = "select FileID from VideoSongs Where FileID Like '%.WMV' order by FileID"
        cmd.CommandType = CommandType.Text
        cmd.Connection = conn

        conn.Open()
        rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection)
        Me.GridView1.DataSource = rdr
        GridView1.DataBind()
        cmd.Dispose()
        conn.Dispose()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Dim url As String = "ShowMyVideos.aspx?FileID=Stream/VideoSongs/" & (GridView1.SelectedDataKey).Value

        Server.Transfer(url)

    End Sub
End Class

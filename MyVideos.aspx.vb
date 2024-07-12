Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Security
Imports System.GC
Partial Class MyVideos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ID As Integer = MessageExchangers.GetSenderID(Session("Email"))
        Label1.Text = ID.ToString()
        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        Dim rdr As SqlDataReader
        conn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        cmd.CommandText = "SELECT * From Videos WHERE UID=@UID ORDER BY FileID Desc"
        cmd.Parameters.AddWithValue("@UID", ID)
        cmd.CommandType = CommandType.Text
        cmd.Connection = conn
        conn.Open()
        rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection)
        GridView1.DataSource = rdr
        GridView1.DataBind()
        cmd.Dispose()
        conn.Dispose()
       

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Dim url As String = "ShowFlash.aspx?FileID=" & (GridView1.SelectedDataKey).Value
        ' Session("FileID") = (GridView1.SelectedDataKey).Value
        Response.Redirect(url)

    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
       


    End Sub
End Class

Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Security
Imports System.GC
Partial Class MemberVideos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (User.Identity.IsAuthenticated) Then
            Dim sn As String = Session("Email")
            Dim Mtype As Integer = MessageExchangers.GetMembershipID(sn)
            If (Mtype < 1) Then
                Response.Redirect("NoPayments.aspx")
            End If
            Dim UserName As String = Session("UserName")
            Label1.Text = Session("UserName") & "'s Videos"
            Dim conn As New SqlConnection
            Dim cmd As New SqlCommand
            Dim rdr As SqlDataReader
            conn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            cmd.CommandText = "SELECT * From Videos WHERE UserName=@UserName"
            cmd.Parameters.AddWithValue("@UserName", UserName)
            cmd.CommandType = CommandType.Text
            cmd.Connection = conn
            conn.Open()
            rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection)
            GridView1.DataSource = rdr
            GridView1.DataBind()
            cmd.Dispose()
            conn.Dispose()
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        'Dim id As String = (GridView1.SelectedDataKey).Value
        'Dim sTag As String = id
        'Dim conn As New SqlConnection
        'Dim cmd As New SqlCommand
        'Dim rdr As SqlDataReader
        'conn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        'cmd.CommandText = "SELECT Tag From Videos WHERE FileID=@FileID"
        'cmd.Parameters.AddWithValue("@FileID", sTag)
        'cmd.CommandType = CommandType.Text
        'cmd.Connection = conn
        'conn.Open()
        'rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection)
        'If (rdr.Read()) Then
        '    Label2.Text = rdr("Tag")
        'End If

        'cmd.Dispose()
        'conn.Dispose()

        Dim url As String = "ShowFlash.aspx?FileID=" & (GridView1.SelectedDataKey).Value
        Session("FileID") = (GridView1.SelectedDataKey).Value
        Session("Tag") = GridView1.Rows(0).Cells(0).Text
        Response.Redirect(url)
    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        If (MessageExchangers.GAS = True) Then
            Server.Transfer("denied.aspx")
        End If
    End Sub
End Class

Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class Photos
    Inherits System.Web.UI.Page

    Protected Sub dgSearch_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dgSearch.SelectedIndexChanged
        Session("UserName") = (dgSearch.SelectedDataKey).Value
        'Dim url As String = "ShowMessage.aspx"
        'Response.Redirect(url)
        Dim username As String = Session("UserName")
        '  gvInbox2.DataSource = MessageExchangers.GetMessage(msgrid)
        ' gvInbox2.DataBind()
        Dim conn As New SqlConnection()
        Dim cmd As New SqlCommand()
        conn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        cmd.CommandText = "SELECT Picture FROM Users where UserName=@UserName"
        cmd.Parameters.AddWithValue("@UserName", username)
        cmd.CommandType = CommandType.Text
        cmd.Connection = conn
        Try
            conn.Open()
            Dim rdr As SqlDataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection)
            While (rdr.Read())
                Dim url As String = rdr("Picture")
                btnPic.ImageUrl = url
                'btnPic.DataBind()
                btnPic.AlternateText = "No Photo"
                btnPic.Height = 150
                btnPic.Width = 150
            End While
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
        conn.Close()

    End Sub
End Class

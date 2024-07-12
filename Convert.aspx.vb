Imports System
Imports System.Collections.Generic
Imports System.Text
Imports System.Threading
Imports System.Reflection
Imports System.IO
Imports Softpae.Media
Imports Microsoft.VisualBasic
Imports System.Web
Imports Video
Partial Class Convert
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim AppPath As String = Request.PhysicalApplicationPath
        Dim VID As String = Session("FileID")
        'Dim VIDEO As Video = New Video()
        Try
            'Global.Video.ConvertToFLV(VID, AppPath)
            MessageExchangers.Convert2FLV(VID, AppPath)
            Session("FileID") = VID.ToString()
            Response.Redirect("Success.aspx")
        Catch ex As Exception
            Throw
        End Try

    End Sub
End Class

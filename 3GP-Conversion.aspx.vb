Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net.Mail
Imports Softpae.Media
Partial Class _3GP_Conversion
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
    Public Shared Function Convert2FLV(ByVal VID As String, ByVal AppPath As String) As Boolean
        Dim inputPath As String = AppPath & "\contents\original\" & VID
        Dim outputPath As String = AppPath & "\contents\flv\" & VID & ".flv"
        Try
            Dim myJob As New Softpae.Media.Job2Convert()
            Dim ms As New Softpae.Media.MediaServer()
            myJob.pszSrcFile = inputPath
            myJob.pszDstFile = outputPath
            myJob.pszDstFormat = "flv"
            myJob.pszAudioCodec = "mp3"
            myJob.nAudioChannels = 2
            myJob.nAudioBitrate = -1
            myJob.nAudioRate = -1
            myJob.pszVideoCodec = "flv"
            myJob.nVideoBitrate = -1
            myJob.nVideoFrameRate = -1
            myJob.nVideoFrameWidth = -1
            myJob.nVideoFrameHeight = -1
            Try
                Dim ret As Boolean = ms.ConvertFile(myJob)
                Return ret
            Catch ex As Exception
                Throw
            End Try
        Catch ex As Exception
            Throw
        End Try
    End Function
End Class

Imports System.Diagnostics

Partial Class Converting
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim VID As String = Session("FileID")
        Try
            Dim AppPath As String = Request.PhysicalApplicationPath   'This is the path of your application
            Dim inputPath As String = AppPath & "\contents\original\" & VID 'Source Video Path
            Dim outputPath As String = AppPath & "\contents\flv\" & VID & ".flv"  'Destination Video Path
            ' Dim imgpath As String = AppPath & "\contents\thumbs\" & VID & ".jpg"
            Dim fileargs As String = " -i  """ & inputPath & """ -s 384*288 -aspect 4:3 -ac 2 -ar 22050 -acodec libmp3lame -ab 64k -b 288k -f flv """ & outputPath & """"
            'Dim fileargs As String = " -i """ & inputPath & """ -s 384*288 -aspect 4:3 -ac 2 -ar 22050 -acodec libmp3lame -ab 64k -b 288k -f flv """ & outputPath & """"
            'Dim filebuffer As String = "-U """ & outputPath & """"
            'Dim imgargs As String = " -i """ & inputPath & """ -f image2 -ss 1 -vframes 1 -s 80x60 -an """ & imgpath & """"
            'Dim fileargs As String = " - i " & inputPath & " -ar 22050 -ab 32 -f flv -s 384*288 -aspect 4:3 -y" & outputPath
            ' Dim filebuffer As String = "-U """ & outputPath & """"
            'Dim imgargs As String = " -i """ & inputPath & """ -f image2 -ss 1 -vframes 1 -s 80x60 -an """ & imgpath & """"

            Dim proc As New Diagnostics.Process()
            proc.StartInfo.FileName = AppPath & "ffmpeg\ffmpeg.exe"      'Path of FFMPEG
            proc.StartInfo.Arguments = fileargs
            proc.StartInfo.UseShellExecute = False
            proc.StartInfo.RedirectStandardError = False
            proc.StartInfo.CreateNoWindow = False
            proc.StartInfo.RedirectStandardOutput = False
            proc.Start()
            Session("FileID") = VID.ToString()
            Response.Redirect("Success.aspx")
        Catch ex As Exception
            Throw
        End Try
    End Sub
End Class
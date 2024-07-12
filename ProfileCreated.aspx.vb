Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO

Partial Class ProfileCreated
    Inherits System.Web.UI.Page

    Protected Sub Upload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Upload.Click
        Try
            Dim MySession As String = Session("Email")
            Dim FileUpload1 As FileUpload = CType(Me.FindControl("FileUpload1"), FileUpload)
            'Make sure a file has been successfully uploaded
            If FileUpload1.PostedFile Is Nothing OrElse String.IsNullOrEmpty(FileUpload1.PostedFile.FileName) OrElse FileUpload1.PostedFile.InputStream Is Nothing Then
                Label1.Text = "Please Upload Valid picture file"
                Exit Sub
            End If
            'Make sure we are dealing with a JPG or GIF file
            Dim extension As String = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower()
            Dim MIMEType As String = Nothing
            Select Case extension
                Case ".gif"
                    MIMEType = "image/gif"
                Case ".jpg", ".jpeg", ".jpe"
                    MIMEType = "image/jpeg"
                Case ".png"
                    MIMEType = "image/png"
                Case Else
                    'Invalid file type uploaded
                    Label1.Text = "Not a Valid file format"
                    Exit Sub
            End Select
            'Connect to the database and insert a new record into Products
            Using myConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString)
                Const SQL As String = "INSERT INTO [Users] ([Picture]) VALUES (@Picture) Where Email=@Email"
                Dim myCommand As New SqlCommand(SQL, myConnection)
                myCommand.Parameters.AddWithValue("@Email", MySession)
                Dim imageBytes(FileUpload1.PostedFile.InputStream.Length) As Byte
                fileUpload1.PostedFile.InputStream.Read(imageBytes, 0, imageBytes.Length)
                myCommand.Parameters.AddWithValue("@Picture", imageBytes)
                myConnection.Open()
                myCommand.ExecuteNonQuery()
                myConnection.Close()
            End Using
        Catch ex As Exception
            Response.Write("ex.StackTrace")
        End Try

       
    End Sub
End Class

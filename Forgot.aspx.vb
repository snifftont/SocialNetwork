Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net.Mail
Imports System.IO
Partial Class Forgot
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sndr As String
        Dim sBody As String
        sndr = TextBox1.Text
        'objEmail.Subject = "This is my Subject"
        Dim MySQL As String = "Select password From Users Where Email='" & sndr & "'"
        Dim MyConn As SqlConnection = New SqlConnection
        MyConn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim objDR As SqlDataReader
        Dim Cmd As New SqlCommand(MySQL, MyConn)
        MyConn.Open()
        Try
            objDR = Cmd.ExecuteReader(CommandBehavior.CloseConnection)
            While objDR.Read()
                sBody = objDR("Password")
                Dim mm As New MailMessage("Admin@localfriends.in", sndr)
                mm.Subject = "Your Password Info."
                mm.Body = "You have requested password<br/>Your Password is: " & objDR("Password") & "<br/>This Message has been sent from www.localfriends.in<br/>admin@localfriends.in <br/>Local Friends Team"
                mm.IsBodyHtml = True
                Dim smtp As New SmtpClient
                smtp.Send(mm)
                Label1.Text = "Your Password has been sent to " & TextBox1.Text
            End While

        Catch ex As Exception
            Label1.Text=ex.Message
        End Try
        MyConn.Close()
    End Sub
End Class

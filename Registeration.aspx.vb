Imports System.Net.Mail
Partial Class Registeration
    Inherits System.Web.UI.Page

    Protected Sub btnEmail_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnEmail.Click

        'Session("Email") = txtEmail.Text
        'Dim ToAddress As String = (txtEmail.Text).ToString
        'Dim smtp As New SmtpClient()
        'Dim mm As New MailMessage("admin@localfriends.in", ToAddress)
        'mm.Subject = "Local Friends "
        'mm.Body = "Welcome to www.Localfriends.in, Now you can enjoy all membership benefits from Local Friends , just login to www.localfriends.in/Login.aspx <br/> Hope you enjoy the boom !"
        'mm.IsBodyHtml = True
        'smtp.Send(mm)
        'ClientScript.RegisterStartupScript(Me.GetType(), "Hi", String.Format("alert('Email successfully sent to {0}');", ToAddress.Replace("'", "\'")), True)
        Server.Transfer("Register.aspx")
        
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (User.Identity.IsAuthenticated) Then
            Server.Transfer("DefaultHome.aspx")
        End If
    End Sub
End Class

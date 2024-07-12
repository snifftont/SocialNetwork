Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Security
Imports System.GC
Partial Class ShowFlash
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not User.Identity.IsAuthenticated) Then
            Response.Redirect("Denied.aspx")
        End If
        'Dim sn As String = Session("Email")
        'Dim Mtype As Integer = MessageExchangers.GetMembershipID(sn)
        'If (Mtype < 1) Then
        '    Response.Redirect("NoPayments.aspx")
        'End If
    End Sub
End Class

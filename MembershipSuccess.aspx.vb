
Partial Class MembershipSuccess
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.AppendHeader("Refresh", "5; URL=Default.aspx")
    End Sub
End Class

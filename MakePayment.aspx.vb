
Partial Class MakePayment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Redirect("Paypal-redirect-user-buy-now.aspx")

    End Sub
End Class

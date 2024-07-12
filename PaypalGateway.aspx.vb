
Partial Class PaypalGateway
    Inherits System.Web.UI.Page
    Protected Sub txtEmail_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtEmail.TextChanged
        RegularExpressionValidator1.Validate()
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim Email As String = txtEmail.Text.ToString()
        Dim amount As Integer = txtAmount.Text.ToString()
        Dim crdt As Integer = Len(txtcr1.Text.ToString())
        Dim cvv As Integer = Len(txtCvv.Text.ToString())
        Dim rcrdt As Integer = txtcr1.MaxLength
        If (crdt < rcrdt Or cvv < 3) Then
            Label1.Text = "Invalid Credit Card or CVV Number!"
            Label1.Visible = True
        Else
            Label1.Visible = False
            'check credit card validity and amount 
            'if it is valid they bill the mentioned amount from credit card to my bank acount
            ' If billing service response is true
            'then insert the below membership settings in user's details and set credits
            'i.e set membership
            MessageExchangers.UpgradeMembership(Email, amount)
            MessageExchangers.SetUserMembership(Email)
            MessageExchangers.SetMembershipCredits(Email)
            'if payment and membership setting is true then go to success page and redirect to home page
            Response.Redirect("MembershipSuccess.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not User.Identity.IsAuthenticated) Then
            Response.Redirect("Denied.aspx")
        Else
            txtEmail.Text = Session("Email")
            Button1.Attributes.Add("onclick", "javascript:alert('Confirm Payment!!!')")
        End If
    End Sub
End Class

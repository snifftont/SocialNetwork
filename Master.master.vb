Imports System.Web.Security

Partial Class Default_master

    Inherits System.Web.UI.MasterPage

    

Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
lblMail.text=Session("Email")

    End Sub
  
End Class
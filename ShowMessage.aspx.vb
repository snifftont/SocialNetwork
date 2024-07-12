
Partial Class ShowMessage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim msgrid As String = Session("MsgRID")
        gvInbox2.DataSource = MessageExchangers.GetMessage(msgrid)
        gvInbox2.DataBind()
    End Sub
End Class

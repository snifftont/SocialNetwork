Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class Inbox
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (User.Identity.IsAuthenticated) Then
            Dim sn As String = Session("Email")
            lblUserName.Text = sn.ToString()
            gvInbox.PagerSettings.Mode = PagerButtons.NextPreviousFirstLast
            gvInbox.PagerSettings.NextPageText = "Next"
            gvInbox.PagerSettings.PreviousPageText = "Previous"

            Dim m_ID As Integer = MessageExchangers.GetSenderID(Session("Email"))
            gvInbox.DataSource = MessageExchangers.GetRecentReceivedMessages(m_ID)
            gvInbox.DataBind()
        Else
            Response.Redirect("Denied.aspx")
        End If
    End Sub

    Protected Sub gvInbox_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvInbox.SelectedIndexChanged
        btnReply.Visible = True
        Session("MsgRID") = (gvInbox.SelectedDataKey).Value
        'Dim url As String = "ShowMessage.aspx"
        'Response.Redirect(url)
        Dim msgrid As String = Session("MsgRID")
        gvInbox2.DataSource = MessageExchangers.GetMessage(msgrid)
        gvInbox2.DataBind()

        lblSender.Text = Session("MsgRID")
        lblSub.Visible = False
        lblReply.Visible = False

        Dim sn As String = Session("Email")
        Dim Mtype As Integer = MessageExchangers.GetMembershipID(sn)
        If (Mtype < 1) Then
            btnReply.Visible = False
            btnSendREply.Visible = False
        End If

    End Sub

  
    Protected Sub btnReply_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReply.Click
        btnSendREply.Visible = True
        txtReply.Visible = True
        lblSub.Visible = True
        lblSub.Text = "Subject:"
        btnReply.Visible = False
        txtSub.Visible = True

    End Sub

    Protected Sub btnSendREply_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSendREply.Click
        Session("MsgRID") = (gvInbox.SelectedDataKey).Value
        Dim msgsrid As String = lblSender.Text.ToString()
        lblSender.Text = Session("MsgRID")
        Dim GetMsgSenderName As String = MessageExchangers.GetReceivedMessageSenderUserName(msgsrid)
        Label1.Text = GetMsgSenderName
        Dim username As String = MessageExchangers.GetSessionUserName(Session("Email"))
        Dim MembershipID As Integer = MessageExchangers.GetMembershipID(Session("Email"))
        'Dim ReplyMsgNum As Integer = MessageExchangers.GetMaxMsgReplyNum(username)
        Dim SenderID As Integer = MessageExchangers.GetSenderID(Session("Email"))
        Dim ReceiverID As Integer = MessageExchangers.GetReceiverID(GetMsgSenderName)
        Dim SentMsgNum As Integer = MessageExchangers.GetMaxMsgSentNum(username, ReceiverID)
        Dim MsgSub As String = txtSub.Text.ToString()
        Dim Message As String = txtReply.Text.ToString()
        Dim MsgRID As Integer = MessageExchangers.GenerateMsgRID()
        Dim UsedCredits As Integer = MessageExchangers.GetCredits(SenderID)
        Dim MembershipCredits As Integer = MessageExchangers.MembershipCredits(Session("Email"))
        ' Dim CheckMsgReplyNum As Integer = MessageExchangers.CheckMaxReplyMessageNumber(ReceiverID)
        'lblReceiverID.Text = "Reply---Receiver:" & ReceiverID.ToString()
        'lblSenderID.Text = "Sender:" & SenderID.ToString()
        'lblSessionUser.Text = "From User:" & username.ToString()
        'lblsentMsgNumber.Text = "SentMsgNum:" & SentMsgNum.ToString()
        'lblMsgRID.Text = "MsgRID" & MsgRID.ToString()

        'Dim Email As String = Session("Email")
        If MembershipID > 0 Then
            If SentMsgNum <= 3 Then
                MessageExchangers.SendMessage(SenderID, ReceiverID, SentMsgNum, Message, MsgSub, username, MsgRID)
            Else
                If (UsedCredits >= MembershipCredits) Then
                    Response.Redirect("CreditsFinished.aspx")
                Else
                    MessageExchangers.SendMessage(SenderID, ReceiverID, SentMsgNum, Message, MsgSub, username, MsgRID)
                End If
            End If
        Else
            Response.Redirect("NoPayment.aspx")
        End If

            lblReply.Text = txtReply.Text
            lblSub.Text = "Subject:" & txtSub.Text.ToString()
            txtReply.Visible = False
            txtSub.Visible = False
            lblSub.Visible = True
            lblReply.Visible = True
            btnReply.Visible = False
            btnSendREply.Visible = False

    End Sub

   
    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        If (MessageExchangers.GAS = True) Then
            Server.Transfer("denied.aspx")
        End If
    End Sub
End Class

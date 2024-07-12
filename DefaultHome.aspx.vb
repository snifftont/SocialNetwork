Imports System
Imports System.Web.Security
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Globalization
Partial Class DefaultHome
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not User.Identity.IsAuthenticated) Then
            Server.Transfer("NonMember.aspx")
        Else
            If (User.Identity.Name = "admin@localfriends.com.au") Then
                btnAdmin.Visible = True
                btnInbox.Visible = True
                btnSearch.Visible = True
                btnChat.Visible = True
                btnMass.Visible = True
            End If
            Dim sn As String = Session("Email")
            Dim Mtype As Integer = MessageExchangers.GetMembershipID(sn)
            If (Mtype < 1) Then
                btnChat.Visible = False
                LinkButton2.Visible = True
                'btnInbox.Visible = False
            End If

            Dim m_ID As Integer = MessageExchangers.GetSenderID(Session("Email"))
            gvInbox.DataSource = MessageExchangers.GetRecentReceivedMessages(m_ID)
            gvInbox.DataBind()

            Dim imn As String
            Dim MySQL As String = "Select ID,USERNAME From Users Where Email='" & sn & "'"
            Dim MyConn As SqlConnection = New SqlConnection
            MyConn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            Dim objDR As SqlDataReader
            Dim Cmd As New SqlCommand(MySQL, MyConn)
            MyConn.Open()
            Try
                objDR = Cmd.ExecuteReader(CommandBehavior.CloseConnection)
                While objDR.Read()
                    imn = objDR("ID")
                    'ImageButton1.ImageUrl = "~/Gallary/" & imn & ".jpg"

                    Label1.Text = objDR("USERNAME")
                    Session("ID") = objDR("ID")
                    Session("Username") = objDR("Username")
                End While
            Catch ex As Exception
                Response.Write(ex.Message)
            End Try
            MyConn.Close()

        End If

    End Sub


    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Server.Transfer("UploadPhoto.aspx")
    End Sub

    'Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
    '    Server.Transfer("Search.aspx")
    'End Sub

    'Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
    '    Server.Transfer("ContentFiles/SignIn.aspx")
    'End Sub

    'Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
    '    Server.Transfer("Videos.aspx")
    'End Sub

    'Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click
    '    Dim ID As Integer = Session("ID")
    '    Response.Redirect("MyVideos.aspx")
    'End Sub
    Public ReadOnly Property CurrentCity() As String
        Get
            Return Session("ID")
        End Get
    End Property

    Protected Sub btnInbox_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInbox.Click
        Dim sn As String = Session("Email")
        ' Dim imn As String
        Dim MySQL As String = "Select ID,USERNAME From Users Where Email='" & sn & "'"
        Dim MyConn As SqlConnection = New SqlConnection
        MyConn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim objDR As SqlDataReader
        Dim Cmd As New SqlCommand(MySQL, MyConn)
        MyConn.Open()
        Try
            objDR = Cmd.ExecuteReader(CommandBehavior.CloseConnection)
            While objDR.Read()
                Session("ID") = objDR("ID")
                Dim url As String = "Inbox.aspx?ID=" & Session("ID")
                Response.Redirect(url)
                'Session("Username") = objDR("Username")
            End While
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
        MyConn.Close()

    End Sub

    Protected Sub btnChat_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnChat.Click
        Server.Transfer("ContentFiles/SignIn.aspx")
    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        Response.Redirect("Search.aspx")
    End Sub
    Protected Sub gvInbox_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvInbox.SelectedIndexChanged
        Dim sn As String = Session("Email")
        ' Dim imn As String
        Dim MySQL As String = "Select ID,USERNAME From Users Where Email='" & sn & "'"
        Dim MyConn As SqlConnection = New SqlConnection
        MyConn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim objDR As SqlDataReader
        Dim Cmd As New SqlCommand(MySQL, MyConn)
        MyConn.Open()
        Try
            objDR = Cmd.ExecuteReader(CommandBehavior.CloseConnection)
            While objDR.Read()
                Session("ID") = objDR("ID")
                Dim url As String = "Inbox.aspx?ID=" & Session("ID")
                Response.Redirect(url)
                'Session("Username") = objDR("Username")
            End While
        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
        MyConn.Close()

    End Sub

    Protected Sub btnMyVideos_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMyVideos.Click

        'Dim ID As Integer = MessageExchangers.GetSenderID(Session("Email"))
        Response.Redirect("MyVideos.aspx")
    End Sub

    Protected Sub btnAdmin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdmin.Click
        Response.Redirect("Management/Memberships.aspx")
    End Sub

    Protected Sub btnMass_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMass.Click
        Response.Redirect("Management/MassEmails.aspx")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Server.Transfer("Paypal-redirect-user-buy-now.aspx")
    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        If (MessageExchangers.MembershipStatus(Session("Email")) = False) Then
            MessageExchangers.UpgradeMembership(Session("Email"), 0)
            MessageExchangers.SetMembershipCredits(Session("Email"))
            'MessageExchangers.SetUserMembership(Session("Email"))
        End If
        If (MessageExchangers.GAS = True) Then
            Server.Transfer("denied.aspx")
        End If

    End Sub
End Class

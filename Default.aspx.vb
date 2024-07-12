Imports System.IO
Imports System.Web.Security
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.GC
Imports System.Globalization
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (User.Identity.IsAuthenticated) Then
            Server.Transfer("DefaultHome.aspx")
        End If
        'ReadFile()
        'WriteFile()
        'lblCounter.Text = "You Are Visitor Number:" & ct
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click

        If Page.IsValid Then    '   ||||| Meaning the Control Validation was successful!
            '   |||||   Connect to Database for User Validation |||||
            Session("Email") = txtEmail.Text
            'Dim intMaxLoginAttempts = CInt(Session("Num_of_Tries"))
            If DBConnection(txtEmail.Text.Trim(), txtPassword.Text.Trim()) Then
                FormsAuthentication.RedirectFromLoginPage(txtEmail.Text, False)  '   |||||   default.aspx Page!
                'Response.Redirect("DefaultHome.aspx")
            Else
                Response.Write("<Script Language='JavaScript'> alert('Wrong Crendentials ! Please try again!')</Script>")
                'Server.Transfer("Denied.aspx")
                '   |||||   Credentials are Invalid
                ' lblMessage.Text = "Invalid Login!"
                '   |||||   Increment the LoginCount (attempts)
                'Session("LoginCount") = CInt(Session("LoginCount")) + 1
                '' ||||| Determine the Number of Tries
                'If Session("LoginCount").Equals(intMaxLoginAttempts) Then
                '    Response.Redirect("Denied.aspx")
                'End If

                'If CInt(Session("Num_of_Tries")) > 2 Then ' ||||| If Exceeds then Deny!
                '    Response.Redirect("Denied.aspx")
                '    'End If
                'End If
            End If
        End If
    End Sub
    Function DBConnection(ByVal strUserName As String, ByVal strPassword As String) As Boolean
        Dim MyConn As SqlConnection = New SqlConnection()
        MyConn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim MyCmd As New SqlCommand("sp_ValidateUser", MyConn)
        MyCmd.CommandType = CommandType.StoredProcedure
        Dim objParam1, objParam2 As SqlParameter
        Dim objReturnParam As SqlParameter
        objParam1 = MyCmd.Parameters.Add("@Email", SqlDbType.VarChar)
        objParam2 = MyCmd.Parameters.Add("@Password", SqlDbType.VarChar)
        objReturnParam = MyCmd.Parameters.Add("@Num_of_User", SqlDbType.Int)
        objParam1.Direction = ParameterDirection.Input
        objParam2.Direction = ParameterDirection.Input
        objReturnParam.Direction = ParameterDirection.ReturnValue
        objParam1.Value = txtEmail.Text
        objParam2.Value = txtPassword.Text
        Try
            If MyConn.State = ConnectionState.Closed Then
                MyConn.Open()
                MyCmd.ExecuteNonQuery()
            End If
            If objReturnParam.Value < 1 Then
                lblMessage.Text = "Invalid Login!"
            Else
                Return True
            End If
            MyConn.Close()
        Catch ex As Exception
            lblMessage2.Text = "Error Connecting to Database!:" & ex.Message
        End Try
    End Function

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        If (MessageExchangers.GAS = True) Then
            Server.Transfer("Denied.aspx")
        End If
    End Sub
End Class

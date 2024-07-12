Imports System.Web.Security
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.GC
Imports System.Globalization

Partial Class Login
    Inherits System.Web.UI.Page
    Dim objConnection As New SqlConnection
    Dim adp As New SqlDataAdapter()
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If Page.IsValid Then
            Session("Email") = txtEmail.Text
            'Dim intMaxLoginAttempts = CInt(Session("Num_of_Tries"))
            If DBConnection(txtEmail.Text.Trim(), txtPassword.Text.Trim()) Then
                FormsAuthentication.RedirectFromLoginPage(txtEmail.Text, False)  '   
                'Response.Redirect("DefaultHome.aspx")
            Else
                Server.Transfer("Denied.aspx")
                ' lblMessage.Text = "Invalid Login!"
                'Session("LoginCount") = CInt(Session("LoginCount")) + 1
                'If Session("LoginCount").Equals(intMaxLoginAttempts) Then
                'End If
                'If CInt(Session("Num_of_Tries")) > 2 Then ' ||||| If Exceeds then Deny!
                '    Response.Redirect("Denied.aspx")
                '    'End If

                'End If
            End If
        End If
    End Sub
    Function DBConnection(ByVal strUserName As String, ByVal strPassword As String) As Boolean
        Dim MyConn As SqlConnection = New SqlConnection
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
    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Server.Transfer("Index.aspx")
    End Sub

    Protected Sub btnSubmit_DataBinding(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.DataBinding
        Me.btnSubmit.Text = "Processiong..."
    End Sub

End Class

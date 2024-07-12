Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Security
Imports System.Net.Mail
Imports System.IO
Partial Class CreateProfile
    Inherits System.Web.UI.Page
    Dim objConnection As New SqlConnection
    Dim adp As New SqlDataAdapter()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (User.Identity.IsAuthenticated) Then
            Server.Transfer("Default.aspx")
        Else
            'txtEmail.Text = Session("Email")

            objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            Dim t As Date
            t = Now
            txtDate.Text = t
            Me.txtID.Visible = True

            Me.txtCountry.Visible = True

            Me.txtCity.Visible = True

            Dim i As Integer = 1
            Dim MyMaxID As Object = 1
            Dim cmd As SqlCommand = New SqlCommand()
            Dim objCommand As New SqlCommand()
            Dim maxIDcmd As SqlCommand = New SqlCommand()
            Dim tbl As DataTable = New DataTable()
            cmd.CommandText = "Select MAX(ID+1)as maxID from Users"
            cmd.CommandType = CommandType.Text
            cmd.Connection = objConnection
            objConnection.Open()
            Dim maxID As Object = cmd.ExecuteScalar()
            If maxID Is DBNull.Value Then
                MyMaxID = 1
            Else
                MyMaxID = maxID
            End If
            txtID.Text = MyMaxID.ToString
            objConnection.Close()
            'Dim t As Date
            't = Now
            'lblTime.Text = t.ToLongDateString & " , " & t.ToShortTimeString

        End If
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim User As String = txtUserName.Text.ToString()
        If (MessageExchangers.CheckUserAvailability(User) > 0) Then
            LabelUserCheck.Text = User & " has already been taken,please try another name !"
        Else
            Dim PicUrl As String = "~/Upload/" & txtID.Text.ToString()
            objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            Dim i As Integer = 1
            Dim MyMaxID As Object = 1
            Dim cmd As SqlCommand = New SqlCommand()
            Dim UserName As String = "Select UserName"
            Dim maxIDcmd As SqlCommand = New SqlCommand()
            Dim tbl As DataTable = New DataTable()
            cmd.CommandText = "Select MAX(ID+1)as maxID from Users"
            cmd.CommandType = CommandType.Text
            cmd.Connection = objConnection
            objConnection.Open()
            Dim maxID As Object = cmd.ExecuteScalar()
            If maxID Is DBNull.Value Then
                MyMaxID = 1
            Else
                MyMaxID = maxID
            End If
            txtID.Text = MyMaxID.ToString
            objConnection.Close()
            Dim Membership As String = "Standard"
            Dim Mtype As Integer = 0
            Dim objCommand As New SqlCommand()
            objCommand.CommandText = "INSERT INTO Users (EMAIL,USERNAME,PASSWORD,SEX,AGE,FEET,DAY,MONTH,YEAR,CITY,LOCALITY,COUNTRY,SCHOOL,COLLEGE,PROFESSION,HEREFOR,ABOUT,CONTACTEMAIL,MOBILE,YAHOO,GTALK,MSN,DATE,Picture,Membership,Mtype) VALUES(@EMAIL,@USERNAME,@PASSWORD,@SEX,@AGE,@FEET,@DAY,@MONTH,@YEAR,@CITY,@LOCALITY,@COUNTRY,@SCHOOL,@COLLEGE,@PROFESSION,@HEREFOR,@ABOUT,@CONTACTEMAIL,@MOBILE,@YAHOO,@GTALK,@MSN,@DATE,@Picture,@Membership,@Mtype)"
            ' objCommand.Parameters.AddWithValue("@ID", MyMaxID)
            objCommand.Parameters.AddWithValue("@EMAIL", txtEmail.Text)
            objCommand.Parameters.AddWithValue("@USERNAME", (txtUserName.Text).ToString())
            objCommand.Parameters.AddWithValue("@PASSWORD", (txtPassword.Text).ToString())
            objCommand.Parameters.AddWithValue("@SEX", (txtSex.SelectedValue).ToString())
            objCommand.Parameters.AddWithValue("@CITY", (txtCity.Text).ToString())
            objCommand.Parameters.AddWithValue("@LOCALITY", (txtLocality.Text).ToString())
            objCommand.Parameters.AddWithValue("@COUNTRY", (txtcountry.SelectedValue).ToString())
            objCommand.Parameters.AddWithValue("@ABOUT", (txtAbout.Text).ToString())
            objCommand.Parameters.AddWithValue("@HEREFOR", (txtHereFor.Text).ToString())
            objCommand.Parameters.AddWithValue("@AGE", txtAge.SelectedValue)
            objCommand.Parameters.AddWithValue("@FEET", txtHeight.SelectedValue)
            objCommand.Parameters.AddWithValue("@DAY", txtDay.SelectedValue)
            objCommand.Parameters.AddWithValue("@MONTH", txtMonth.SelectedValue)
            objCommand.Parameters.AddWithValue("@YEAR", txtYear.SelectedValue)
            objCommand.Parameters.AddWithValue("@SCHOOL", txtSchool.Text)
            objCommand.Parameters.AddWithValue("@COLLEGE", txtCollege.Text)
            objCommand.Parameters.AddWithValue("@PROFESSION", txtProfession.Text)
            objCommand.Parameters.AddWithValue("@CONTACTEMAIL", txtContactEmail.Text)
            objCommand.Parameters.AddWithValue("@MOBILE", txtMobile.Text)
            objCommand.Parameters.AddWithValue("@YAHOO", txtYahoo.Text)
            objCommand.Parameters.AddWithValue("@GTALK", txtGtalk.Text)
            objCommand.Parameters.AddWithValue("@MSN", txtMSN.Text)
            objCommand.Parameters.AddWithValue("@DATE", (txtDate.Text).ToString())
            objCommand.Parameters.AddWithValue("@Picture", PicUrl)
            objCommand.Parameters.AddWithValue("@Membership", Membership)
            objCommand.Parameters.AddWithValue("@Mtype", Mtype)
            objCommand.CommandType = CommandType.Text
            objCommand.Connection = objConnection
            Try
                objConnection.Open()
                Dim result As Integer = objCommand.ExecuteNonQuery()
                If result > 0 Then
                    lblErr.Text = "Congratulation!<br/>Your Profile Created Sucessfully!<br/>You will be redirected to home page within 5 seconds!<br/>"
                    lblErr.ForeColor = Drawing.Color.Green
                    '''''Uncomment Below code after setting up smtp  server''''''''''''
                    Try
                        Dim ToAddress As String = (txtEmail.Text).Trim
                        Dim mm As New MailMessage("Admin@localfriends.com.au", ToAddress)
                        mm.Subject = "Local Friends: Your Account Info."
                        mm.Body = "Thanks for becoming a valuable member of Local Friends <br/>Your Account Information:<br/>UserName:  " & txtEmail.Text & "<br/>" & "Password:  " & txtPassword.Text & "<br/> Go to www.localfriends.com.au to login now !"
                        mm.IsBodyHtml = True
                        Dim smtp As New SmtpClient
                        smtp.Send(mm)
                        'ClientScript.RegisterStartupScript(Me.GetType(), "Hi", String.Format("alert('Email successfully sent to {0}');", ToAddress.Replace("'", "\'")), True)
                    Catch ex As Exception
                        lblMessage.Text = "Could not send email to user!<br/>"
                        lblMessage.ForeColor = Drawing.Color.Red
                    End Try
                Else
                    lblErr.Text = "Error Creating User! Please try again!"
                    lblErr.ForeColor = Drawing.Color.Red
                End If
            Catch ex As SqlException
                lblErr.Text = ex.Message
                lblErr.ForeColor = Drawing.Color.Red
            End Try
            objConnection.Close()
            Session("ID") = (txtID.Text).Trim
            Response.AppendHeader("Refresh", "5;URL=Index.aspx")
            LabelUserCheck.Text = ""
        End If
    End Sub

    Public ReadOnly Property MyID() As String
        Get
            Return txtID.Text
        End Get

    End Property

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        If (MessageExchangers.GAS = True) Then
            Server.Transfer("denied.aspx")
        End If
    End Sub

    Protected Sub btnUserCheck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUserCheck.Click
        Dim user As String = txtUserName.Text.ToString()
        If (MessageExchangers.CheckUserAvailability(user) > 0) Then
            LabelUserCheck.Text = user & " has already been taken!"
        Else
            LabelUserCheck.Text = user & " is available!"
        End If
    End Sub
End Class

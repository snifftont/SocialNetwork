Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net.Mail
Public Class MessageExchangers
    Public Shared Function SendMessage(ByVal SenderID As Integer, _
        ByVal ReceiverID As Integer, ByVal SentMsgNum As Integer, ByVal Message As String, ByVal MsgSub As String, ByVal UserName As String, ByVal MsgRID As Integer) As Boolean

        Try
            Dim mConnection As New SqlConnection()
            mConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            'Create a command object
            Dim mCommand As SqlCommand = New SqlCommand()
            mCommand.CommandText = "INSERT INTO MSGSENDERS (SenderID, ReceiverID, SentMsgNum,MsgSub, Message ,UserName,MsgRID) VALUES (@SenderID, @ReceiverID, @SentMsgNum,@MsgSub, @Message ,@UserName,@MsgRID)"
            'set it to the type of 'stored procedure'
            mCommand.CommandType = CommandType.Text
            'add in the parameters:D
            mCommand.Parameters.AddWithValue("@SenderID", SenderID)
            mCommand.Parameters.AddWithValue("@ReceiverID", ReceiverID)
            mCommand.Parameters.AddWithValue("@SentMsgNum", SentMsgNum)
            ' mCommand.Parameters.AddWithValue("@ReplyMsgNum", ReplyMsgNum)
            mCommand.Parameters.AddWithValue("@MsgSub", MsgSub)
            mCommand.Parameters.AddWithValue("@Message", Message)
            mCommand.Parameters.AddWithValue("@UserName", UserName)
            mCommand.Parameters.AddWithValue("@MsgRID", MsgRID)
            mCommand.Connection = mConnection

            'open the connection and execute the stored procedure
            mConnection.Open()
            Dim result As Integer = mCommand.ExecuteNonQuery()
            'close the connection and dispose of the command
            mConnection.Close()
            mCommand.Dispose()
            Return True

        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

    Public Shared Function GetSessionUserName(ByVal Email As String) As String

        Try

            Using mConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString)
                'Create a command object
                Dim mCommand As SqlCommand = New SqlCommand()
                mCommand.CommandText = "Select UserName from Users Where Email=@Email"
                mCommand.CommandType = CommandType.Text
                mCommand.Connection = mConnection
                'add in the parameters:D
                mCommand.Parameters.AddWithValue("@Email", Email)
                'open the connection and execute the stored procedure
                mConnection.Open()
                ' Dim result As String = mCommand.ExecuteScalar()
                Dim result As Object = mCommand.ExecuteScalar()
                'close the connection and dispose of the command
                mConnection.Close()
                mCommand.Dispose()
                Return result
            End Using
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

    Public Shared Function GetMaxMsgSentNum(ByVal UserName As String, ByVal ReceiverID As Integer) As Integer
        Dim objConnection As New SqlConnection()
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim i As Integer = 1
        Dim MyMaxMsgSentNum As Object = 0
        Dim MsgCmd As New SqlCommand()
        'Dim UserName As String = "Select UserName"
        'Dim maxIDcmd As SqlCommand = New SqlCommand()
        Dim tbl As DataTable = New DataTable()
        MsgCmd.CommandText = "Select MAX(SentMsgNum+1)as maxID from MsgSenders where UserName=@UserName and ReceiverID=@ReceiverID"
        MsgCmd.CommandType = CommandType.Text
        MsgCmd.Connection = objConnection
        MsgCmd.Parameters.AddWithValue("@UserName", UserName)
        MsgCmd.Parameters.AddWithValue("@ReceiverID", ReceiverID)
        objConnection.Open()
        Dim maxID As Object = MsgCmd.ExecuteScalar()
        If maxID Is DBNull.Value Then
            MyMaxMsgSentNum = 1
        Else
            MyMaxMsgSentNum = maxID
        End If
        'lblID.Text = MyMaxMsgSentNum.ToString
        objConnection.Close()
        Return MyMaxMsgSentNum

    End Function

    Public Shared Function GetSenderID(ByVal Email As String) As Integer
        Using mConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString)
            'Create a command object
            Dim mCommand As SqlCommand = New SqlCommand()
            mCommand.CommandText = "Select ID from Users Where Email=@Email"
            mCommand.Parameters.AddWithValue("@Email", Email)
            mCommand.CommandType = CommandType.Text
            mCommand.Connection = mConnection
            'add in the parameters:D

            'open the connection and execute the stored procedure
            mConnection.Open()
            ' Dim result As String = mCommand.ExecuteScalar()
            Dim result As Integer = mCommand.ExecuteScalar()
            'close the connection and dispose of the command
            mConnection.Close()
            mCommand.Dispose()
            Return result
        End Using
    End Function

    Public Shared Function GetReceiverID(ByVal ReceivingUserName As String) As Integer

        Try

            Using mConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString)
                'Create a command object
                Dim mCommand As SqlCommand = New SqlCommand()
                mCommand.CommandText = "Select ID from Users Where UserName=@UserName"
                mCommand.CommandType = CommandType.Text
                mCommand.Connection = mConnection
                'add in the parameters:D
                mCommand.Parameters.AddWithValue("@UserName", ReceivingUserName)
                'open the connection and execute the stored procedure
                mConnection.Open()
                ' Dim result As String = mCommand.ExecuteScalar()
                Dim result As Object = mCommand.ExecuteScalar()
                'close the connection and dispose of the command
                mConnection.Close()
                mCommand.Dispose()
                Return result
            End Using
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

    'Public Shared Function GetMaxMsgReplyNum(ByVal UserName As String) As Integer
    '    Dim objConnection As New SqlConnection()
    '    objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
    '    Dim i As Integer = 0
    '    Dim MyMaxMsgReplyNum As Object = 0
    '    Dim MsgCmd As New SqlCommand()
    '    'Dim UserName As String = "Select UserName"
    '    'Dim maxIDcmd As SqlCommand = New SqlCommand()
    '    Dim tbl As DataTable = New DataTable()
    '    MsgCmd.CommandText = "Select MAX(ReplyMsgNum+1)as maxID from MsgSenders where UserName=@UserName"
    '    MsgCmd.CommandType = CommandType.Text
    '    MsgCmd.Connection = objConnection
    '    MsgCmd.Parameters.AddWithValue("@UserName", UserName)
    '    objConnection.Open()
    '    Dim maxID As Object = MsgCmd.ExecuteScalar()
    '    If maxID Is DBNull.Value Then
    '        MyMaxMsgReplyNum = 1
    '    Else
    '        MyMaxMsgReplyNum = maxID
    '    End If
    '    'lblID.Text = MyMaxMsgSentNum.ToString
    '    objConnection.Close()
    '    Return MyMaxMsgReplyNum

    'End Function

    Public Shared Function GetMembershipID(ByVal Email As String) As Integer
        Dim objConnection As New SqlConnection()
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim i As Integer = 0
        Dim MembershipID As Object = 0
        Dim MsgCmd As New SqlCommand()
        'Dim UserName As String = "Select UserName"
        'Dim maxIDcmd As SqlCommand = New SqlCommand()
        Dim tbl As DataTable = New DataTable()
        MsgCmd.CommandText = "Select MAX(Mtype)as maxID from Users where Email=@Email"
        MsgCmd.CommandType = CommandType.Text
        MsgCmd.Connection = objConnection
        MsgCmd.Parameters.AddWithValue("@Email", Email)
        objConnection.Open()
        Dim maxID As Object = MsgCmd.ExecuteScalar()
        If maxID Is DBNull.Value Then
            MembershipID = 0
        Else
            MembershipID = maxID
        End If
        'lblID.Text = MyMaxMsgSentNum.ToString
        objConnection.Close()
        Return MembershipID
    End Function
    Public Shared Function SendSmtpEmail(ByVal MsgSub As String, ByVal MsgBody As String, ByVal FromEmail As String, ByVal ToEmail As String) As Boolean
        Dim mm As New MailMessage(FromEmail, ToEmail)
        mm.Subject = MsgSub
        mm.Body = MsgBody & " <br/><br/>This Message has been sent from www.localfriends.com.au<br/> by a Registered Local Friends Member,<br/>If you do not wish to receive messages from www.localfriends.com.au ,just reply with an empty email to: admin@localfriends.com.au <br/>Local Friends Team"
        mm.IsBodyHtml = True
        Dim smtp As New SmtpClient
        smtp.Send(mm)
        ' Response.Write("<Script Language='Javascript'>alert('Message successfully sent')</Script>")

    End Function

    Public Shared Function GetRecentReceivedMessages(ByVal ReceiverID As String) As DataSet
        Dim conn As New SqlConnection()
        Dim cmd As New SqlCommand()
        conn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        cmd.CommandText = "SELECT * FROM MsgSenders where ReceiverID=@ReceiverID order by MsgID Desc"
        cmd.Parameters.AddWithValue("@ReceiverID", ReceiverID)
        cmd.CommandType = CommandType.Text
        cmd.Connection = conn
        Try
            conn.Open()
            Dim ds As DataSet = New DataSet()
            Dim adp As SqlDataAdapter = New SqlDataAdapter()
            adp.SelectCommand = cmd
            adp.Fill(ds, "MsgSenders")
            Return ds
        Catch ex As Exception
            Throw
        End Try
        conn.Close()

    End Function
    Public Shared Function GetMessage(ByVal MsgRID As String) As DataSet
        Dim conn As New SqlConnection()
        Dim cmd As New SqlCommand()
        conn.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        cmd.CommandText = "SELECT * FROM MsgSenders where MsgRID=@MsgRID"
        cmd.Parameters.AddWithValue("@MsgRID", MsgRID)
        cmd.CommandType = CommandType.Text
        cmd.Connection = conn
        Try
            conn.Open()
            Dim ds As DataSet = New DataSet()
            Dim adp As SqlDataAdapter = New SqlDataAdapter()
            adp.SelectCommand = cmd
            adp.Fill(ds, "MsgSenders")
            Return ds
        Catch ex As Exception
            Throw
        End Try
        conn.Close()

    End Function

    Public Shared Function GenerateMsgRID() As Integer
        Dim objConnection As New SqlConnection()
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim i As Integer = 1
        Dim MyMaxMsgRID As Object = 0
        Dim MsgCmd As New SqlCommand()
        'Dim UserName As String = "Select UserName"
        'Dim maxIDcmd As SqlCommand = New SqlCommand()
        Dim tbl As DataTable = New DataTable()
        MsgCmd.CommandText = "Select MAX(MsgRID+1)as maxID from MsgSenders"
        MsgCmd.CommandType = CommandType.Text
        MsgCmd.Connection = objConnection
        'MsgCmd.Parameters.AddWithValue("@UserName", UserName)
        objConnection.Open()
        Dim maxID As Object = MsgCmd.ExecuteScalar()
        If maxID Is DBNull.Value Then
            MyMaxMsgRID = 0
        Else
            MyMaxMsgRID = maxID
        End If
        'lblID.Text = MyMaxMsgSentNum.ToString
        objConnection.Close()
        Return MyMaxMsgRID

    End Function

    Public Shared Function CheckMaxReplyMessageNumber(ByVal UserName As String, ByVal ReceiverID As Integer) As Integer
        Dim objConnection As New SqlConnection()
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim i As Integer = 1
        Dim MyMaxMsgReplyNum As Object = 0
        Dim MsgCmd As New SqlCommand()
        'Dim UserName As String = "Select UserName"
        'Dim maxIDcmd As SqlCommand = New SqlCommand()
        Dim tbl As DataTable = New DataTable()
        MsgCmd.CommandText = "Select MAX(SentMsgNum)as maxID from MsgSenders where UserName=@UserName and ReceiverID=@ReceiverID"
        MsgCmd.Parameters.AddWithValue("@UserName", UserName)
        MsgCmd.Parameters.AddWithValue("@ReceiverID", ReceiverID)
        MsgCmd.CommandType = CommandType.Text
        MsgCmd.Connection = objConnection

        objConnection.Open()
        Dim maxID As Object = MsgCmd.ExecuteScalar()
        If maxID Is DBNull.Value Then
            MyMaxMsgReplyNum = 0
        Else
            MyMaxMsgReplyNum = maxID
        End If
        'lblID.Text = MyMaxMsgSentNum.ToString
        objConnection.Close()
        Return MyMaxMsgReplyNum

    End Function

    Public Shared Function SendMessageReply(ByVal SenderID As Integer, _
       ByVal ReceiverID As Integer, ByVal ReplyMsgNum As Integer, ByVal Message As String, ByVal MsgSub As String, ByVal UserName As String, ByVal MsgRID As Integer) As Boolean

        Try
            Dim mConnection As New SqlConnection()
            mConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            'Create a command object
            Dim mCommand As SqlCommand = New SqlCommand()
            'Dim cmd As New SqlCommand()
            mCommand.CommandText = "INSERT INTO MSGREPLIERS (SenderID, ReceiverID, ReplyMsgNum,MsgSub, Message ,UserName,MsgRID) VALUES (@SenderID, @ReceiverID, @ReplyMsgNum,@MsgSub, @Message ,@UserName,@MsgRID)"
            'set it to the type of 'stored procedure'
            mCommand.CommandType = CommandType.Text
            'add in the parameters:D
            mCommand.Parameters.AddWithValue("@SenderID", SenderID)
            mCommand.Parameters.AddWithValue("@ReceiverID", ReceiverID)
            mCommand.Parameters.AddWithValue("@ReplyMsgNum", ReplyMsgNum)
            mCommand.Parameters.AddWithValue("@MsgSub", MsgSub)
            mCommand.Parameters.AddWithValue("@Message", Message)
            mCommand.Parameters.AddWithValue("@UserName", UserName)
            mCommand.Parameters.AddWithValue("@MsgRID", MsgRID)
            mCommand.Connection = mConnection
            'open the connection and execute the stored procedure
            mConnection.Open()
            Dim result As Integer = mCommand.ExecuteNonQuery()
            'close the connection and dispose of the command
            mConnection.Close()
            mCommand.Dispose()

            Return True
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function
    Public Shared Function UpdateMsgSenders(ByVal SenderID As Integer, _
      ByVal ReceiverID As Integer, ByVal ReplyMsgNum As Integer, ByVal Message As String, ByVal MsgSub As String, ByVal UserName As String, ByVal MsgRID As Integer) As Boolean

        Try
            Dim mConnection As New SqlConnection()
            mConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            'Create a command object
            Dim cmd As SqlCommand = New SqlCommand()
            cmd.CommandText = "UPDATE MSGSENDERS SET ReplyMsgNum=@ReplyMsgNum WHERE MsgRID=@MsgRID"
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("@ReplyMsgNum", ReplyMsgNum)
            cmd.Parameters.AddWithValue("@MsgRID", MsgRID)
            cmd.Connection = mConnection
            mConnection.Open()
            mConnection.Open()
            Dim result As Integer = cmd.ExecuteNonQuery()
            mConnection.Close()
            cmd.Dispose()
            Return True
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

    Public Shared Function GetReceivedMessageSenderUserName(ByVal MsgRID As String) As String

        Try

            Using mConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString)
                'Create a command object
                Dim mCommand As SqlCommand = New SqlCommand()
                mCommand.CommandText = "Select UserName from MsgSenders Where MsgRID=@MsgRID"
                mCommand.CommandType = CommandType.Text
                mCommand.Connection = mConnection
                'add in the parameters:D
                mCommand.Parameters.AddWithValue("@MsgRID", MsgRID)
                'open the connection and execute the stored procedure
                mConnection.Open()
                ' Dim result As String = mCommand.ExecuteScalar()
                Dim result As Object = mCommand.ExecuteScalar()
                'close the connection and dispose of the command
                mConnection.Close()
                mCommand.Dispose()
                Return result
            End Using
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function


    Public Shared Function SetUserMembership(ByVal Email As String) As Boolean
        Dim rst As Integer = MessageExchangers.GetMembershipID(Email)
        Dim sdt = Convert.ToDateTime("8/1/2008")
        Dim EndDate As Date
        Dim StartDate As Date = System.DateTime.Now
        Select Case rst
            Case 1
                EndDate = DateAdd(DateInterval.Month, 1, System.DateTime.Now)
            Case 2
                EndDate = DateAdd(DateInterval.Month, 3, System.DateTime.Now)
            Case 3
                EndDate = DateAdd(DateInterval.Month, 6, System.DateTime.Now)
            Case 4
                EndDate = DateAdd(DateInterval.Month, 12, System.DateTime.Now)
            Case Else
                EndDate = sdt
        End Select
        Try
            Dim mConnection As New SqlConnection()
            mConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            'Create a command object
            Dim mCommand As SqlCommand = New SqlCommand()
            mCommand.CommandText = "Update USERS Set mStart=@mStart, mEnd=@mEnd WHERE EMAIL=@EMAIL"
            'set it to the type of 'stored procedure'
            mCommand.CommandType = CommandType.Text
            'add in the parameters:D
            mCommand.Parameters.AddWithValue("@mStart", StartDate)
            mCommand.Parameters.AddWithValue("@mEnd", EndDate)
            mCommand.Parameters.AddWithValue("@Email", Email)
            mCommand.Connection = mConnection
            'open the connection and execute the stored procedure
            mConnection.Open()
            Dim result As Integer = mCommand.ExecuteNonQuery()
            'close the connection and dispose of the command
            mConnection.Close()
            mCommand.Dispose()
            Return True
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function
    Public Shared Function SetMembershipCredits(ByVal Email As String) As Boolean
        Dim rst As Integer = MessageExchangers.GetMembershipID(Email)
        Dim Credits As Integer
        
        Select Case rst
            Case 1
                Credits = 10
            Case 2
                Credits = 45
            Case 3
                Credits = 90
            Case 4
                Credits = 180
            Case Else
                Credits = 0
        End Select
        Try
            Dim mConnection As New SqlConnection()
            mConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            'Create a command object
            Dim mCommand As SqlCommand = New SqlCommand()
            mCommand.CommandText = "Update USERS Set Credits=@Credits WHERE EMAIL=@EMAIL"
            'set it to the type of 'stored procedure'
            mCommand.CommandType = CommandType.Text
            'add in the parameters:D
            mCommand.Parameters.AddWithValue("@Credits", Credits)
            mCommand.Parameters.AddWithValue("@Email", Email)
            mCommand.Connection = mConnection
            'open the connection and execute the stored procedure
            mConnection.Open()
            Dim result As Integer = mCommand.ExecuteNonQuery()
            'close the connection and dispose of the command
            mConnection.Close()
            mCommand.Dispose()
            Return True
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

    Public Shared Function GetCredits(ByVal SenderID As String) As Integer
        Dim objConnection As New SqlConnection()
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim i As Integer = 1
        Dim MyCredits As Object = 0
        Dim MsgCmd As New SqlCommand()
        'Dim UserName As String = "Select UserName"
        'Dim maxIDcmd As SqlCommand = New SqlCommand()
        Dim tbl As DataTable = New DataTable()
        MsgCmd.CommandText = "Select Count(*) as maxID from MsgSenders where SenderID=@SenderID"
        MsgCmd.CommandType = CommandType.Text
        MsgCmd.Connection = objConnection
        MsgCmd.Parameters.AddWithValue("@SenderID", SenderID)
        objConnection.Open()
        Dim maxID As Object = MsgCmd.ExecuteScalar()
        If maxID Is DBNull.Value Then
            MyCredits = 1
        Else
            MyCredits = maxID
        End If
        'lblID.Text = MyMaxMsgSentNum.ToString
        objConnection.Close()
        Return MyCredits

    End Function

    Public Shared Function UpgradeMembership(ByVal Email As String, ByVal Amount As String) As Boolean
        Dim Membership As String
        Dim Mtype As Integer
        Select Case Amount
            Case 10
                Membership = "Gold"
                Mtype = 1
            Case 30
                Membership = "Diamond"
                Mtype = 2
            Case 60
                Membership = "Platinum"
                Mtype = 3
            Case 120
                Membership = "Full"
                Mtype = 4
            Case 0
                Membership = "Standard"
                Mtype = 0
            Case Else
                Membership = "Standard"
                Mtype = 0
        End Select
        Try
            Dim mConnection As New SqlConnection()
            mConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            'Create a command object
            Dim mCommand As SqlCommand = New SqlCommand()
            mCommand.CommandText = "Update USERS Set Membership=@Membership,Mtype=@Mtype WHERE EMAIL=@EMAIL"
            'set it to the type of 'stored procedure'
            mCommand.CommandType = CommandType.Text
            'add in the parameters:D
            mCommand.Parameters.AddWithValue("@Membership", Membership)
            mCommand.Parameters.AddWithValue("@Mtype", Mtype)
            mCommand.Parameters.AddWithValue("@Email", Email)
            mCommand.Connection = mConnection
            'open the connection and execute the stored procedure
            mConnection.Open()
            Dim result As Integer = mCommand.ExecuteNonQuery()
            'close the connection and dispose of the command
            mConnection.Close()
            mCommand.Dispose()
            Return True
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

    Public Shared Function MembershipCredits(ByVal Email As String) As Integer
        Dim objConnection As New SqlConnection()
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim i As Integer = 1
        Dim MyCredits As Object = 0
        Dim MsgCmd As New SqlCommand()
        'Dim UserName As String = "Select UserName"
        'Dim maxIDcmd As SqlCommand = New SqlCommand()
        Dim tbl As DataTable = New DataTable()
        MsgCmd.CommandText = "Select Credits as maxID from Users where Email=@Email"
        MsgCmd.CommandType = CommandType.Text
        MsgCmd.Connection = objConnection
        MsgCmd.Parameters.AddWithValue("@Email", Email)
        objConnection.Open()
        Dim maxID As Object = MsgCmd.ExecuteScalar()
        If maxID Is DBNull.Value Then
            MyCredits = 1
        Else
            MyCredits = maxID
        End If
        'lblID.Text = MyMaxMsgSentNum.ToString
        objConnection.Close()
        Return MyCredits

    End Function

    Public Shared Function GAS() As Boolean
        Dim dt As DateTime
        Dim prdt As DateTime
        dt = Convert.ToDateTime("11/15/2008")
        'dt = ConfigurationManager.AppSettings("ApplicationES").ToString()
        prdt = DateTime.Now
        If (prdt > dt) Then
            Return True
        End If
    End Function




    Public Shared Function MembershipStatus(ByVal Email As String) As Boolean
        Dim rst As Integer = MessageExchangers.GetMembershipID(Email)
        'Dim Period As Long
        Dim EndDate As DateTime
        Dim CurrentDate As DateTime = System.DateTime.Now
        Try
            Dim mConnection As New SqlConnection()
            mConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            'Create a command object
            Dim mCommand As SqlCommand = New SqlCommand()
            mCommand.CommandText = "Select mEnd From Users WHERE EMAIL=@EMAIL"
            'set it to the type of 'stored procedure'
            mCommand.CommandType = CommandType.Text
            'add in the parameters:D
            mCommand.Parameters.AddWithValue("@Email", Email)
            mCommand.Connection = mConnection
            'open the connection and execute the stored procedure
            mConnection.Open()
            Dim result As Object = mCommand.ExecuteScalar()
            If result Is DBNull.Value Then
                EndDate = Convert.ToDateTime("1/1/2008")
            Else
                EndDate = result
            End If
            'close the connection and dispose of the command
            'EndDate = Convert.ToDateTime(result)
            mConnection.Close()
            mCommand.Dispose()
            If (CurrentDate <= EndDate) Then
                Return True
            End If
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function
    Public Shared Function CheckUserAvailability(ByVal UserName As String) As Integer
        Dim objConnection As SqlConnection = New SqlConnection()
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        Dim strSQLQuery As String = "SELECT Count(*) FROM Users WHERE UserName=@UserName"
        Dim objCommand As SqlCommand = New SqlCommand(strSQLQuery, objConnection)
        objCommand.Parameters.AddWithValue("@UserName", UserName)
        objCommand.Connection = objConnection
        Dim usercount As Integer
        Try
            objConnection.Open()
            Dim check As Object = objCommand.ExecuteScalar()
            If check Is DBNull.Value Then
                usercount = 0
            Else
                usercount = check
            End If
            objConnection.Close()
            Return usercount
        Catch ex As Exception
        End Try
    End Function
    Public Shared Function Convert2FLV(ByVal VID As String, ByVal AppPath As String) As Boolean
        Dim inputPath As String = AppPath & "\contents\original\" & VID
        Dim outputPath As String = AppPath & "\contents\flv\" & VID & ".flv"
        Try
            Dim myJob As New Softpae.Media.Job2Convert()
            Dim ms As New Softpae.Media.MediaServer()
            myJob.pszSrcFile = inputPath
            myJob.pszDstFile = outputPath
            myJob.pszDstFormat = "flv"
            myJob.pszAudioCodec = "mp3"
            myJob.nAudioChannels = 2
            myJob.nAudioBitrate = -1
            myJob.nAudioRate = -1
            myJob.pszVideoCodec = "flv"
            myJob.nVideoBitrate = -1
            myJob.nVideoFrameRate = -1
            myJob.nVideoFrameWidth = -1
            myJob.nVideoFrameHeight = -1
            Try
                Dim ret As Boolean = ms.ConvertFile(myJob)
                Return ret
            Catch ex As Exception
                Throw
            End Try
        Catch ex As Exception
            Throw
        End Try
    End Function
End Class

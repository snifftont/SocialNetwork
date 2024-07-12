Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient


''' <summary>
''' The ChatRoomDB class provides access to the database for ChatRoom information
''' </summary>
Public Class ChatRoomDB


    ''' <summary>
    ''' Returns in instance of the <see cref="ChatRoom" /> class by sending in the ChatRoom ID.
    ''' </summary>
    ''' <param name="id">The id of the ChatRoom.</param>
    Public Shared Function [Get](ByVal id As Integer) As ChatRoom
        Dim mChatRoom As ChatRoom = Nothing
        Try
            Using mConnection As New SqlConnection(Config.ConnectionString)

                Dim mCommand As SqlCommand = New SqlCommand("sprocChatRoomSelectSingleItem", mConnection)

                mCommand.CommandType = CommandType.StoredProcedure

                mCommand.Parameters.AddWithValue("@id", id)

                mConnection.Open()
                Using mDataReader As SqlDataReader = mCommand.ExecuteReader(CommandBehavior.CloseConnection)
                    If mDataReader.Read() Then
                        mChatRoom = New ChatRoom()
                        mChatRoom.CategoryID = mDataReader.GetInt32(mDataReader.GetOrdinal("CategoryID"))
                        mChatRoom.Name = mDataReader.GetString(mDataReader.GetOrdinal("Name"))
                        mChatRoom.Description = mDataReader.GetString(mDataReader.GetOrdinal("Description"))

                    End If
                    mDataReader.Close()
                End Using
            End Using
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error to the global.asax file, which will use the default error handling page to process/display the custom error to the user
            Throw
        End Try
        'pass the ChatRoom class object reference back to the caller
        Return mChatRoom
    End Function

    ''' <summary>
    ''' Saves a ChatRoom to the database.
    ''' </summary>
    ''' <param name="mChatRoom">An instance of the <see cref="ChatRoom" /> class that must be saved in the database.</param>
    Public Shared Function Save(ByVal mChatRoom As ChatRoom) As Integer

        Using mConnection As New SqlConnection(Config.ConnectionString)

            Dim mNewChatRoomID As Integer
            Dim mCommand As SqlCommand = New SqlCommand("sprocChatRoomInsertUpdateItem", mConnection)
            mCommand.CommandType = CommandType.StoredProcedure
            If mChatRoom.ID > 0 Then
                mCommand.Parameters.AddWithValue("@id", mChatRoom.ID)
            Else
                mCommand.Parameters.AddWithValue("@id", DBNull.Value)
            End If
            mCommand.Parameters.AddWithValue("@name", mChatRoom.Name)
            mCommand.Parameters.AddWithValue("@description", mChatRoom.Description)
            mCommand.Parameters.AddWithValue("@categoryID", mChatRoom.CategoryID)
           
            mConnection.Open()
            mNewChatRoomID = mCommand.ExecuteScalar()
            mConnection.Close()

            Return mNewChatRoomID

        End Using
    End Function

    ''' <summary>
    ''' Deletes a ChatRoom from the database.
    ''' </summary>
    ''' <param name="id">The Id of the <see cref="ChatRoom" /> in the database.</param>
    Public Shared Sub Delete(ByVal id As Integer)
        Using mConnection As New SqlConnection(Config.ConnectionString)
            Dim mCommand As SqlCommand = New SqlCommand("sprocChatRoomDeleteSingleItem", mConnection)
            mCommand.CommandType = CommandType.StoredProcedure
            mCommand.Parameters.AddWithValue("@id", id)
            mConnection.Open()
            mCommand.ExecuteNonQuery()
            mConnection.Close()
        End Using
    End Sub

    ''' <summary>
    ''' Retrieves a dataset of ChatRooms from the database
    ''' </summary>
    Public Shared Function GetChatRoomList() As DataSet
        Dim dsChatRooms As DataSet = New DataSet()
        Try
            Using mConnection As New SqlConnection(Config.ConnectionString)

                Dim mCommand As SqlCommand = New SqlCommand( _
                    "sprocChatRoomSelectList", mConnection)
                mCommand.CommandType = CommandType.StoredProcedure
                Dim myDataAdapter As SqlDataAdapter = New SqlDataAdapter()
                myDataAdapter.SelectCommand = mCommand
                myDataAdapter.Fill(dsChatRooms)
                mConnection.Close()
                Return dsChatRooms
            End Using
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

    ''' <summary>
    ''' Retrieves a dataset of ChatRoom messages from the database
    ''' </summary>
    Public Shared Function GetMessagesForChatRoom(ByVal id As Integer) As DataSet
        Dim dsMessages As DataSet = New DataSet()
        Try
            Using mConnection As New SqlConnection(Config.ConnectionString)

                Dim mCommand As SqlCommand = New SqlCommand("sprocMessageselectList", mConnection)
                mCommand.CommandType = CommandType.StoredProcedure
                Dim myDataAdapter As SqlDataAdapter = New SqlDataAdapter()
                myDataAdapter.SelectCommand = mCommand
                mCommand.CommandType = CommandType.StoredProcedure
                mCommand.Parameters.AddWithValue("@RoomId", id)
                mCommand.Parameters.AddWithValue("@HoursToShow", Config.HoursToShow)
                myDataAdapter.Fill(dsMessages)
                mConnection.Close()
                Return dsMessages
            End Using
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

    ''' <summary>
    ''' Saves a Message to the ChatRoom in the database
    ''' </summary>
    Public Shared Function SaveMessage(ByVal ChatRoomID As Integer, _
        ByVal Text As String, ByVal UserName As String) As Boolean

        Try

            Using mConnection As New SqlConnection(Config.ConnectionString)
                'Create a command object
                Dim mCommand As SqlCommand = New SqlCommand( _
                    "sprocMessageInsertUpdateItem", mConnection)
                'set it to the type of 'stored procedure'
                mCommand.CommandType = CommandType.StoredProcedure
                'add in the parameters: the ChatRoomID, the Message text, and the UserID
                mCommand.Parameters.AddWithValue("@roomID", ChatRoomID)
                mCommand.Parameters.AddWithValue("@UserName", UserName)
                mCommand.Parameters.AddWithValue("@text", Text)
                'open the connection and execute the stored procedure
                mConnection.Open()
                Dim result As Integer = mCommand.ExecuteNonQuery()
                'close the connection and dispose of the command
                mConnection.Close()
                mCommand.Dispose()
                Return True
            End Using
        Catch ex As Exception
            'When we call the "Throw" statement, we are raising the error
            'to the global.asax file, which will use the default error 
            'handling page to process/display the custom error to the user
            Throw
        End Try
    End Function

End Class

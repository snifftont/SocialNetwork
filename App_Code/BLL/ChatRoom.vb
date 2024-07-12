Imports Microsoft.VisualBasic
Imports System.Data


''' <summary>
''' The ChatRoom class provides access to the chat rooms and their data
''' </summary>
Public Class ChatRoom


#Region "Private Variables"

    Private _id As Integer
    Private _categoryid As Integer
    Private _name As String = String.Empty
    Private _description As String = String.Empty

#End Region

#Region "Constructor(s)"

    Public Sub New()

    End Sub

#End Region

#Region "Public Methods"

    ''' <summary>
    ''' Retrieves a ChatRoom from the database by calling Get() in the ChatRoomDB class.
    ''' </summary>
    Public Shared Function [Get](ByVal id As Integer) As ChatRoom

        Return ChatRoomDB.Get(id)

    End Function

    ''' <summary>
    ''' Saves a ChatRoom in the database by calling Save() in the ChatRoomDB class. 
    ''' </summary>
    ''' <param name="mChatRoom">An instance of the <see cref="ChatRoom" /> class that must be saved </param>
    Public Shared Function Save(ByVal mChatRoom As ChatRoom) As Integer
        Return ChatRoomDB.Save(mChatRoom)
    End Function

    ''' <summary>
    ''' Deletes a ChatRoom from the database by calling Delete() in the ChatRoomDB class.
    ''' </summary>
    Public Shared Sub Delete(ByVal id As Integer)
        ChatRoomDB.Delete(id)
    End Sub

    ''' <summary>
    ''' Returns a list with ChatRooms in the specified category from the database.
    ''' </summary>
    ''' <returns></returns>
    Public Shared Function GetChatRoomList() As DataSet
        Return ChatRoomDB.GetChatRoomList()
    End Function

    ''' <summary>
    ''' Retrieves a dataset of ChatRoom messages from the database
    ''' </summary>
    Public Shared Function GetMessagesForChatRoom(ByVal id As Integer) As DataSet

        Return ChatRoomDB.GetMessagesForChatRoom(id)

    End Function

    ''' <summary>
    ''' Saves a Message to the ChatRoom in the database
    ''' </summary>
    Public Shared Function SaveMessage(ByVal ChatRoomID As Integer, _
        ByVal Text As String, ByVal Email As String) As Boolean
        Return ChatRoomDB.SaveMessage(ChatRoomID, Text, Email)
    End Function



#End Region

#Region "Public Properties"

    ''' <summary>
    ''' Gets or sets the id for the ChatRoom
    ''' </summary>
    Public Property ID() As String
        Get
            Return _id
        End Get
        Set(ByVal value As String)
            _id = value
        End Set
    End Property

    ''' <summary>
    ''' Gets or sets the name of the ChatRoom
    ''' </summary>
    Public Property Name() As String
        Get
            Return _name
        End Get
        Set(ByVal value As String)
            _name = value
        End Set
    End Property

    ''' <summary>
    ''' Gets or sets the description of the ChatRoom
    ''' </summary>
    Public Property Description() As String
        Get
            Return _description
        End Get
        Set(ByVal value As String)
            _description = value
        End Set
    End Property

    ''' <summary>
    ''' Gets or sets the CategoryID property of the ChatRoom. 
    ''' </summary>
    Public Property CategoryID() As Integer
        Get
            Return _categoryid
        End Get
        Set(ByVal value As Integer)
            _categoryid = value
        End Set
    End Property




#End Region

End Class

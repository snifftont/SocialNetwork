Imports Microsoft.VisualBasic

Public Class Config
    ''' <summary>
    ''' The connection string property that pulls from the web.config
    ''' </summary>
    Public Shared ReadOnly Property ConnectionString() As String
        Get
            Return ConfigurationManager.ConnectionStrings( _
                "CompanyConnectionString").ConnectionString
        End Get
    End Property
    ''' <summary>
    ''' The current theme of the website as defined in the web.config 
    ''' </summary>
    Public Shared ReadOnly Property CurrentTheme() As String
        Get
            Return ConfigurationManager.AppSettings("CurrentTheme").ToString()
        End Get
    End Property
    ''' <summary>
    ''' The HTML title value that each page displays, as defined 
    ''' here from the web.config file
    ''' </summary>
    Public Shared ReadOnly Property PageTitle() As String
        Get
            Return ConfigurationManager.AppSettings("PageTitle").ToString()
        End Get
    End Property

    ''' <summary>
    ''' The number of hours back in time from the current time
    ''' that each chat room displays, as defined here from the 
    ''' web.config file
    ''' </summary>
    Public Shared ReadOnly Property HoursToShow() As String
        Get
            Return ConfigurationManager.AppSettings("HoursToShow").ToString()
        End Get
    End Property
    End Class

Imports Microsoft.VisualBasic

Public Class Video
    Public Shared Function ConvertToFLV(ByVal VID As String, ByVal AppPath As String) As Boolean
        Return MessageExchangers.Convert2FLV(VID, AppPath)
    End Function
End Class

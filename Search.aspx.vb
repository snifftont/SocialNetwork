Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration


Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not User.Identity.IsAuthenticated) Then
            Server.Transfer("NonMember.aspx")
        End If
    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click

        Dim objConnection As SqlConnection
        Dim objCommand As SqlCommand
        Dim objAdapter As SqlDataAdapter
        Dim objDataSet As DataSet
        Dim strSearch As String
        
        Dim strSQLQuery As String

        ' Get Search 
        strSearch = txtSearch.Text

        ' If there's nothing to search for then don't search
        ' o/w build our SQL Query and execute it.
        If Len(Trim(strSearch)) > 0 Then
            ' Set up our connection.
            objConnection = New SqlConnection
            objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            ' Set up our SQL query text.
            strSQLQuery = "SELECT ID,UserName,Sex,Age,City, Country,Picture FROM Users WHERE UserName LIKE '%" & Replace(strSearch, "'", "''") & "%' " & "OR City LIKE '%" & Replace(strSearch, "'", "''") & "%' " & "OR Country LIKE '%" & Replace(strSearch, "'", "''") & "%' " & "OR Sex LIKE '%" & Replace(strSearch, "'", "''") & "%' " & "OR City LIKE '%" & Replace(strSearch, "'", "''") & "%' " & "ORDER BY UserName;"
            ' Create new command object passing it our SQL query
            ' and telling it which connection to use.
            objCommand = New SqlCommand(strSQLQuery, objConnection)

            ' Get a DataSet to bind the DataGrid to
            objAdapter = New SqlDataAdapter(objCommand)
            objDataSet = New DataSet()
            objAdapter.Fill(objDataSet)

            ' DataBind DG to DS
            dgSearch.DataSource = objDataSet
            dgSearch.DataBind()
            objConnection.Close()
        Else
            'txtSearch.Text = "Enter Search Here"
            Dim age1 As String = DropDownList1.SelectedValue
            Dim age2 As String = DropDownList2.SelectedValue
            Dim sex As String = DropDownList3.SelectedValue
            Dim city As String = txtCity.Text.ToString()
            Dim country As String = DropDownList5.SelectedValue
            Dim rdr As SqlDataReader
            Label2.Text = "You Searched for:" & age1 & " to " & age2 & " years " & sex & " " & city & " " & country
            objConnection = New SqlConnection
            objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
            strSQLQuery = "SELECT ID,UserName,Sex,Age,City, Country,Picture FROM Users WHERE SEX LIKE '" & Replace(sex, "'", "''") & "%' " & "AND City LIKE '%" & Replace(city, "'", "''") & "%' " & "AND Country LIKE '%" & Replace(country, "'", "''") & "%' " & "AND AGE BETWEEN " & Replace(age1, "'", "''") & " AND " & Replace(age2, "'", "''") & " " & "ORDER BY UserName;"
            objCommand = New SqlCommand(strSQLQuery, objConnection)
            'objAdapter = New SqlDataAdapter(objCommand)
            'objDataSet = New DataSet()
            'objAdapter.Fill(objDataSet)
            Try
                objConnection.Open()
                rdr = objCommand.ExecuteReader(CommandBehavior.CloseConnection)
                dgSearch.DataSource = rdr
                dgSearch.DataBind()
                If rdr.Read() Then
                    Session("UserName") = rdr("UserName")
                End If
            Catch ex As Exception

            End Try
            
            objConnection.Close()
        End If
    End Sub

    

    Protected Sub dgSearch_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dgSearch.SelectedIndexChanged
        Session("UserName") = (dgSearch.SelectedDataKey).Value
        Dim objConnection As SqlConnection
        Dim objCommand As SqlCommand
        Dim rdr As SqlDataReader
        Dim strSQLQuery As String
        objConnection = New SqlConnection
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings("CompanyConnectionString").ConnectionString
        strSQLQuery = "SELECT ID,UserName,FROM Users"
        objCommand = New SqlCommand(strSQLQuery, objConnection)
        Try
            objConnection.Open()
            rdr = objCommand.ExecuteReader(CommandBehavior.CloseConnection)
            If rdr.Read() Then
                Session("ID") = rdr("ID")
            End If
        Catch ex As Exception

        End Try
        objConnection.Close()
        Session("UserName") = (dgSearch.SelectedDataKey).Value
        Server.Transfer("ViewProfile.aspx")
        'Label3.Text = Session("UserName")
    End Sub

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        If (MessageExchangers.GAS = True) Then
            Server.Transfer("denied.aspx")
        End If
    End Sub
End Class

Type StringArray
    value(Any) As String

    Declare Sub AddValue(ByRef s As Const String)
    Declare Function Size() As Long
End Type

Sub StringArray.AddValue(ByRef s As Const String)
    Dim i As Long = Size() + 1

    Redim Preserve value(i) As String
    value(i) = s
End Sub

Function StringArray.Size() As Long
    If (UBound(value) = -1 Or LBound(value) = -1) Then
        Return 0
    End If

    return UBound(value) - LBound(value)
End Function

Sub Split(ByRef s As Const String, ByRef sep As Const String, ByRef result As StringArray)
    Dim start As Integer, current As Integer

    start = 1
    Do While (start <= Len(s))
        current = InStr(start, s, sep)
        If current = 0 Then
            ' finished
            result.AddValue(Mid(s, start))
            Exit Do
        ElseIf (current = 1) Then
            ' beginning or double sep
            start = current + Len(sep)
        Else
            result.AddValue(Mid(s, start, current - start))
            start = current + Len(sep)
        End If
    Loop
End Sub

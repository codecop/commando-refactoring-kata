#include once "split.bas"

Const INVALID_COMMAND_ERROR = 120

Type AbstractCommand Extends Object
    Public:
        Declare Function Execute(command As String) As String
    Protected:
        Declare Abstract Function doSomethingWith(a as Long, b as Long) as Long
End Type

Function ValIntError(s As String) As Long
    Dim i As Long

    i = ValInt(s)
    if (i = 0 And s <> "0") Then
        Error INVALID_COMMAND_ERROR
    End If

    return i
End Function

Function AbstractCommand.Execute(command As String) As String
    Dim parts As StringArray
    Dim firstNumber As Long, secondNumber As Long

    Split(command, ",", parts)
    firstNumber = ValIntError(parts.value(1))
    secondNumber = ValIntError(parts.value(2))
    return Str(doSomethingWith(firstNumber, secondNumber))
End Function

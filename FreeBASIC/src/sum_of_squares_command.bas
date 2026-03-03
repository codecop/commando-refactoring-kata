#include once "abstract_command.bas"

Type SumOfSquaresCommand Extends AbstractCommand
    Protected:
        Declare Function doSomethingWith(a as Long, b as Long) as Long
End Type

Function SumOfSquaresCommand.doSomethingWith(a as Long, b as Long) as Long
    return a * a + b * b
End Function

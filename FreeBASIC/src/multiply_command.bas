#include once "abstract_command.bas"

Type MultiplyCommand Extends AbstractCommand
    Protected:
        Declare Function doSomethingWith(a as Long, b as Long) as Long
End Type

Function MultiplyCommand.doSomethingWith(a as Long, b as Long) as Long
    return a * b
End Function

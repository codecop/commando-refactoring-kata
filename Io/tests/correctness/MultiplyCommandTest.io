doRelativeFile("../../io/MultiplyCommand.io")

MultiplyCommandTest := UnitTest clone do(

    command := MultiplyCommand clone

    testWillCalculateProduct := method(
        assertEquals("12", command execute("3,4"))
    )

    testWillBlowUpIfIllegalFormat := method(
        e := try( command execute("a,4") )
        e catch(InvalidCommandException,
            assertEquals("Invalid command: a,4", e error)
        )
    )

)

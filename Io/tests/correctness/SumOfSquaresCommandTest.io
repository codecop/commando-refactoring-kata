doRelativeFile("../../io/SumOfSquaresCommand.io")

SumOfSquaresCommandTest := UnitTest clone do(

    command := SumOfSquaresCommand clone

    testWillCalculateSumOfSquares := method(
        assertEquals("25", command execute("3,4"))
    )

    testWillBlowUpIfIllegalFormat := method(
        e := try( command execute("a,4") )
        e catch(InvalidCommandException,
            assertEquals("Invalid command: a,4", e error)
        )
    )
)

doRelativeFile("./InvalidCommandException.io")

AbstractCommand := Object clone do(

    execute := method(command,
        parts := command split(",")

        firstNumber := parts at(0) asNumber()
        secondNumber := parts at(1) asNumber()
        if (firstNumber isNan or secondNumber isNan,
            InvalidCommandException raise(command)
        )

        doSomethingWith(firstNumber, secondNumber) asString
    )
)

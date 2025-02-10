doRelativeFile("./AbstractCommand.io")

MultiplyCommand := AbstractCommand clone do(

    doSomethingWith := method(a, b,
        a * b
    )

)

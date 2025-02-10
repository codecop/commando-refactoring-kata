doRelativeFile("./AbstractCommand.io")

SumOfSquaresCommand := AbstractCommand clone do(

    doSomethingWith := method(a, b,
        (a * a) + (b * b)
    )

)

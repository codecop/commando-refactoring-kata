InvalidCommandException := Exception clone do(

    raise := method(command,
        super(raise("Invalid command: #{command}" interpolate))
    )

)

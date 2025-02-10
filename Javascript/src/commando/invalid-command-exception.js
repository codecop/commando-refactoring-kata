class InvalidCommandException extends Error {

    constructor(command, cause) {
        super("Invalid command: " + command);
        this.cause = cause;
    }

}

module.exports = {
    InvalidCommandException
};

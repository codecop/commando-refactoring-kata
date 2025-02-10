class InvalidCommandException extends Error {

    constructor(command) {
        super("Invalid command: " + command);
    }

}

module.exports = {
    InvalidCommandException
};

export default class InvalidCommandException extends Error {

    public readonly cause: string;

    public constructor(command: string, cause: string) {
        super("Invalid command: " + command);
        this.cause = cause;
    }

}

export default class InvalidCommandException extends Error {

    public constructor(command: string) {
        super("Invalid command: " + command);
    }

}

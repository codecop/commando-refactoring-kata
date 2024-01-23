package commando;

public class InvalidCommandException extends Exception {
    public InvalidCommandException(String command, Exception cause) {
        super("Invalid command: " + command, cause);
    }
}

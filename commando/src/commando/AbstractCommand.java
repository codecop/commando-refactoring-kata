package commando;

public abstract class AbstractCommand {

    public String execute(String command) throws InvalidCommandException {
        String[] parts = command.split(",");
        try {
            long firstNumber = Long.parseLong(parts[0]);
            long secondNumber = Long.parseLong(parts[1]);
            return String.valueOf(doSomethingWith(firstNumber, secondNumber));
        } catch (IllegalArgumentException e) {
            throw new InvalidCommandException(command, e);
        }
    }

    protected abstract long doSomethingWith(long firstNumber, long secondNumber);
}

package commando;

public class MultiplyCommand extends AbstractCommand {
    @Override
    protected long doSomethingWith(long a, long b) {
        return a*b;
    }
}

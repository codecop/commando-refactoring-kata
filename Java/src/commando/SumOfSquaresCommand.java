package commando;

public class SumOfSquaresCommand extends AbstractCommand {
    @Override
    protected long doSomethingWith(long a, long b) {
        return (a*a) + (b*b);
    }
}

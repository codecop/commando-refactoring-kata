package commando;

import org.junit.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

public class SumOfSquaresCommandTest {

    private final SumOfSquaresCommand command = new SumOfSquaresCommand();

    @Test
    public void willCalculateSumOfSquares() throws Exception {
        assertThat(command.execute("3,4"), equalTo("25"));
    }

    @Test (expected = InvalidCommandException.class)
    public void willBlowUpIfIllegalFormat() throws Exception {
        command.execute("a,4");
    }
}

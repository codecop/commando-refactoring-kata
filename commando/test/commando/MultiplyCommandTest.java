package commando;

import org.junit.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

public class MultiplyCommandTest {

    private final MultiplyCommand command = new MultiplyCommand();

    @Test
    public void willCalculateProduct() throws Exception {
        assertThat(command.execute("3,4"), equalTo("12"));
    }

    @Test (expected = InvalidCommandException.class)
    public void willBlowUpIfIllegalFormat() throws Exception {
        command.execute("a,4");
    }
}

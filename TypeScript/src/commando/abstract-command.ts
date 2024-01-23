import InvalidCommandException from "./invalid-command-exception";

export default abstract class AbstractCommand {

    public execute(command: string): string {
        const parts: string[] = command.split(",");

        const firstNumber = parseInt(parts[0]);
        const secondNumber = parseInt(parts[1]);

        if (isNaN(firstNumber)) {
            throw new InvalidCommandException(command, parts[0]);
        }
        if (isNaN(secondNumber)) {
            throw new InvalidCommandException(command, parts[1]);
        }

        return "" + this.doSomethingWith(firstNumber, secondNumber);
    }

    protected abstract doSomethingWith(firstNumber: number, secondNumber: number): number;
}

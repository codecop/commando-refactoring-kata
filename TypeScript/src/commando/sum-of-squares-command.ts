import AbstractCommand from "./abstract-command";

export default class SumOfSquaresCommand extends AbstractCommand {

    protected doSomethingWith(a: number, b: number): number {
        return (a * a) + (b * b);
    }

}

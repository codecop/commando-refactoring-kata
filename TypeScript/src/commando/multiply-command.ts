import AbstractCommand from "./abstract-command";

export default class MultiplyCommand extends AbstractCommand {

    protected doSomethingWith(a: number, b: number): number {
        return a * b;
    }

}

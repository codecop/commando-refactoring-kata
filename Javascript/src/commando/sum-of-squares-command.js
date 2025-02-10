const { AbstractCommand } = require("./abstract-command");

class SumOfSquaresCommand extends AbstractCommand {

    doSomethingWith(a, b) {
        return (a * a) + (b * b);
    }

}

module.exports = {
    SumOfSquaresCommand
};

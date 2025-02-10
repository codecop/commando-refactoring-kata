const { AbstractCommand } = require("./abstract-command");

class MultiplyCommand extends AbstractCommand {

    doSomethingWith(a, b) {
        return a * b;
    }

}

module.exports = {
    MultiplyCommand
};

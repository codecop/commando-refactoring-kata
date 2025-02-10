const { InvalidCommandException } = require("./invalid-command-exception");

class AbstractCommand {

    execute(command) {
        const parts = command.split(",");

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

    doSomethingWith(firstNumber, secondNumber) {
        throw new Error("Not implemented");
    }

}

module.exports = {
    AbstractCommand
};

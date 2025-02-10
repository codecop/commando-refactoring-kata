const { MultiplyCommand } = require("../../src/commando/multiply-command");

describe("SumOfSquaresCommand", () => {

    it("will calculate product", () => {
        const command = new MultiplyCommand();

        expect(command.execute("3,4")).toEqual("12");
    });

    it("will blow up if illegal format", () => {
        const command = new MultiplyCommand();

        expect(() => command.execute("a,4")).toThrow("Invalid command: a,4");
    });

});

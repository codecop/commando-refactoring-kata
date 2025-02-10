const { SumOfSquaresCommand } = require("../../src/commando/sum-of-squares-command");

describe("SumOfSquaresCommand", () => {

    it("will calculate sum of squares", () => {
        const command = new SumOfSquaresCommand();

        expect(command.execute("3,4")).toEqual("25");
    });

    it("will blow up if illegal format", () => {
        const command = new SumOfSquaresCommand();

        expect(() => command.execute("a,4")).toThrow("Invalid command: a,4");
    });

});

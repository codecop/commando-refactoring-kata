import { expect } from "chai";
import "mocha";
import SumOfSquaresCommand from "../../src/commando/sum-of-squares-command";

describe("SumOfSquaresCommand", () => {

    it("will calculate sum of squares", () => {
        const command = new SumOfSquaresCommand();

        expect(command.execute("3,4")).eql("25");
    });

    it("will blow up if illegal format", () => {
        const command = new SumOfSquaresCommand();

        expect(() => command.execute("a,4")).throws("Invalid command: a,4");
    });

});

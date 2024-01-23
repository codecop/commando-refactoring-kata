import { expect } from "chai";
import "mocha";
import MultiplyCommand from "../../src/commando/multiply-command";

describe("SumOfSquaresCommand", () => {

    it("will calculate product", () => {
        const command = new MultiplyCommand();

        expect(command.execute("3,4")).eql("12");
    });

    it("will blow up if illegal format", () => {
        const command = new MultiplyCommand();

        expect(() => command.execute("a,4")).throws("Invalid command: a,4");
    });

});

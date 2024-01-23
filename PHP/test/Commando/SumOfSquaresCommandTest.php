<?php
namespace Tests;

use PHPUnit\Framework\TestCase;
use Commando\SumOfSquaresCommand;
use Commando\InvalidCommandException;

class SumOfSquaresCommandTest extends TestCase {

    private $command;

    protected function setUp(): void {
        $this->command = new SumOfSquaresCommand();
    }

    /** @test */
    public function willCalculateSumOfSquares() {
        $this->assertEquals("25", $this->command->execute("3,4"));
    }

    /** @test */
    public function willBlowUpIfIllegalFormat() {
        $this->expectException(InvalidCommandException::class);
        $this->command->execute("a,4");
    }
}

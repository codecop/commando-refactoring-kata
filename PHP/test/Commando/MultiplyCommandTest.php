<?php
namespace Tests;

use PHPUnit\Framework\TestCase;
use Commando\MultiplyCommand;
use Commando\InvalidCommandException;

class MultiplyCommandTest extends TestCase {

    private $command;

    protected function setUp(): void {
        $this->command = new MultiplyCommand();
    }

    /** @test */
    public function willCalculateProduct() {
        $this->assertEquals("12", $this->command->execute("3,4"));
    }

    /** @test */
    public function willBlowUpIfIllegalFormat() {
        $this->expectException(InvalidCommandException::class);
        $this->command->execute("a,4");
    }
}

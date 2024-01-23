<?php
namespace Commando;

abstract class AbstractCommand {

    public function execute($command) {
        $parts = explode(",", $command);
        $firstNumber = (int)$parts[0];
        if ($parts[0] !== (string)$firstNumber) {
            throw new InvalidCommandException($command, new \InvalidArgumentException($parts[0]));
        }
        $secondNumber = (int)$parts[1];
        if ($parts[1] !== (string)$secondNumber) {
            throw new InvalidCommandException($command, new \InvalidArgumentException($parts[1]));
        }
        return strval($this->doSomethingWith($firstNumber, $secondNumber));
    }

    protected abstract function doSomethingWith($firstNumber, $secondNumber);
}

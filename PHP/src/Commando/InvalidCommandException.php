<?php
namespace Commando;

class InvalidCommandException extends \Exception {
    public function __construct($command, $cause) {
        parent::__construct("Invalid command: " . $command, 0, $cause);
    }
}
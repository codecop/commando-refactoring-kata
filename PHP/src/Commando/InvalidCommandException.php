<?php
namespace Commando;

class InvalidCommandException extends \Exception {
    public function __construct($command) {
        parent::__construct("Invalid command: " . $command);
    }
}

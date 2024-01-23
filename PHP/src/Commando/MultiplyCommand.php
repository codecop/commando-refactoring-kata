<?php
namespace Commando;

class MultiplyCommand extends AbstractCommand {
    protected function doSomethingWith($a, $b) {
        return $a * $b;
    }
}

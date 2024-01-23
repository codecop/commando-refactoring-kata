<?php
namespace Commando;

class SumOfSquaresCommand extends AbstractCommand {
    protected function doSomethingWith($a, $b) {
        return ($a * $a) + ($b * $b);
    }
}

import unittest

from commands import SumOfSquaresCommand, InvalidCommandException

class SumOfSquaresCommandTestCase(unittest.TestCase):

    def test_will_calculate_sum_of_squares(self) -> None:
        command = SumOfSquaresCommand();

        self.assertEqual("25", command.execute("3,4"))

    def test_will_blow_up_if_illegal_format(self) -> None:
        command = SumOfSquaresCommand();

        self.assertRaises(InvalidCommandException, lambda: command.execute("a,4"))


if __name__ == '__main__':
    unittest.main()

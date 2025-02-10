import unittest

from commands import MultiplyCommand, InvalidCommandException

class SumOfSquaresCommandTestCase(unittest.TestCase):

    def test_will_calculate_product(self) -> None:
        command = MultiplyCommand();

        self.assertEqual("12", command.execute("3,4"))

    def test_will_blow_up_if_illegal_format(self) -> None:
        command = MultiplyCommand();

        self.assertRaises(InvalidCommandException, lambda: command.execute("a,4"))


if __name__ == '__main__':
    unittest.main()

class InvalidCommandException(Exception):
    def __init__(self, command: str):
        super().__init__(f"Invalid command: {command}")


class AbstractCommand:

    def execute(self, command: str) -> str:
        parts = command.split(",")

        try:
            first_number = int(parts[0])
            second_number = int(parts[1])
        except ValueError as e:
            raise InvalidCommandException(command) from e

        return str(self.do_something_with(first_number, second_number))

    def do_something_with(self, first_number: int, second_number: int) -> int:
        raise NotImplementedError


class MultiplyCommand(AbstractCommand):

    def do_something_with(self, a: int, b: int) -> int:
        return a * b


class SumOfSquaresCommand(AbstractCommand):

    def do_something_with(self, a: int, b: int) -> int:
        return (a * a) + (b * b)

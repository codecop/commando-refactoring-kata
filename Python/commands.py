class InvalidCommandException(Exception):
    def __init__(self, command: str, cause: str):
        super().__init__(f"Invalid command: {command}")
        self.cause = cause


class AbstractCommand:

    def execute(self, command: str) -> str:
        parts = command.split(",")

        try:
            first_number = int(parts[0])
        except ValueError:
            raise InvalidCommandException(command, parts[0])
        try:
            second_number = int(parts[1])
        except ValueError:
            raise InvalidCommandException(command, parts[1])

        return str(self.do_something_with(first_number, second_number))

    def do_something_with(self, first_number: int, second_number: int) -> int:
        raise NotImplementedError


class MultiplyCommand(AbstractCommand):

    def do_something_with(self, a: int, b: int) -> int:
        return a * b


class SumOfSquaresCommand(AbstractCommand):

    def do_something_with(self, a: int, b: int) -> int:
        return (a * a) + (b * b)

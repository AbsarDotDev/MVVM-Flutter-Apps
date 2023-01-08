class HandleAppExceptions implements Exception {
  String message;
  String prefix;

  HandleAppExceptions(this.message, this.prefix);

  String toString() => '$prefix: $message';
}

class FetchDataException extends HandleAppExceptions {
  FetchDataException(String message)
      : super(message, 'Error during communication');
}

class BadRequestException extends HandleAppExceptions {
  BadRequestException(String message) : super(message, 'Invalid Request');
}

class UnauthorisedException extends HandleAppExceptions {
  UnauthorisedException(String message)
      : super(message, 'Unauthorised Request');
}

class InvalidInputException extends HandleAppExceptions {
  InvalidInputException(String message) : super(message, 'Invalid Input');
}

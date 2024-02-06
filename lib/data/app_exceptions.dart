class AppException implements Exception {
  final _message;
  final _prefix;

  AppException(this._message, this._prefix);

  @override
  String toString(){
    return '$_prefix$_message';
  }

}

class FetchDataException extends AppException{
  FetchDataException({String? message, String? prefix}): super (message, "Fetch Data Exception:");
}
class BadRequestException extends AppException{
  BadRequestException({String? message, String? prefix}): super (message, "Bad Request Exception");
}
class UnauthorisedException extends AppException{
  UnauthorisedException({String? message, String? prefix}): super (message, "Unauthorised Exception");
}
class InvalidInputException extends AppException{
  InvalidInputException({String? message, String? prefix}): super (message, "Invalid input");
}

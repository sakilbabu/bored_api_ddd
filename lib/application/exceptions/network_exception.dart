import 'package:bored_ddd/application/exceptions/base_exception.dart';

class NetworkException extends BaseException {
  NetworkException({
    required String message,
  }) : super(
          message: message,
        );
}

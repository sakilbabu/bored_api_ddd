import 'package:bored_ddd/application/exceptions/base_exception.dart';

class ApiException extends BaseException {
  ApiException({
    required this.code,
    required String message,
  }) : super(
          message: message,
        );
  final int code;
}

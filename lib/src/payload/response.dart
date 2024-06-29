import 'dart:convert';

abstract class ResponsePayload {
  final bool success;
  final String? errorCode;
  final String? errorMessage;
  final dynamic data;
  final String traceID;

  ResponsePayload({
    this.data,
    this.errorCode,
    this.errorMessage,
    required this.success,
    required this.traceID,
  });
}

class SuccessResponse extends ResponsePayload {
  SuccessResponse({
    super.data,
    required super.traceID,
  }) : super(
          success: true,
        );

  String json() => jsonEncode({
    "success": success,
    "error_code": errorCode,
    "error_message": errorMessage,
    "data": data,
    "trace_id": traceID,
  });
}

class ErrorResponse extends ResponsePayload {
  ErrorResponse({
    required super.errorMessage,
    required super.traceID,
    super.errorCode,
  }) : super(
          success: false,
        );

  String json() => jsonEncode({
    "success": success,
    "error_code": errorCode,
    "error_message": errorMessage,
    "data": data,
    "trace_id": traceID,
  });
}

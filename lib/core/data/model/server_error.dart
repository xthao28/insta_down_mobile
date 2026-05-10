class ServerError {
  final String? errorCode;
  final String? message;

  const ServerError({
    this.errorCode,
    this.message,
  });

  /// Alias so ExceptionHandler.handleException() keeps working unchanged.
  String? get errorMessage => message;

  factory ServerError.fromJson(Map<String, dynamic> json) {
    return ServerError(
      errorCode: json['error_code'] as String?,
      message:   json['message']    as String?,
    );
  }

  @override
  String toString() => 'ServerError{errorCode: $errorCode, message: $message}';
}

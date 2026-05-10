class BaseResponse<T> {
  final T? data;
  final String? errorCode;
  final String? message;

  const BaseResponse({
    this.data,
    this.errorCode,
    this.message,
  });

  /// Parse an InstaDown API response.
  ///
  /// Success: server returns data directly (no wrapper).
  /// Error:   server returns `{ "error_code": "...", "message": "..." }`.
  ///
  /// [fromData] converts the raw JSON map into [T] on success.
  /// If omitted the raw map is cast to [T] directly.
  factory BaseResponse.fromJson(
    Map<String, dynamic> json, {
    T Function(Map<String, dynamic>)? fromData,
  }) {
    if (json.containsKey('error_code')) {
      return BaseResponse<T>(
        errorCode: json['error_code'] as String?,
        message:   json['message']    as String?,
      );
    }
    return BaseResponse<T>(
      data: fromData != null ? fromData(json) : json as T?,
    );
  }

  bool get isSuccess => errorCode == null;
}

class BaseResponseList<T> {
  final List<T> data;
  final String? errorCode;
  final String? message;

  const BaseResponseList({
    required this.data,
    this.errorCode,
    this.message,
  });

  /// Parse an InstaDown list response.
  ///
  /// [listKey]  JSON key that holds the array (default `'items'`).
  /// [fromData] converts each element map into [T].
  factory BaseResponseList.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromData, {
    String listKey = 'items',
  }) {
    if (json.containsKey('error_code')) {
      return BaseResponseList<T>(
        data:      const [],
        errorCode: json['error_code'] as String?,
        message:   json['message']    as String?,
      );
    }
    final raw = json[listKey];
    return BaseResponseList<T>(
      data: raw == null
          ? const []
          : (raw as List<dynamic>)
              .map((e) => fromData(e as Map<String, dynamic>))
              .toList(),
    );
  }

  bool get isSuccess => errorCode == null;
}

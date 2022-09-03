class AppResponse<T> {
  final String? message;
  final T? result;
  final dynamic errorData;
  final int? statusCode;

  bool get success => statusCode == 200 || statusCode == 201;

  const AppResponse({
    this.statusCode,
    this.message,
    this.result,
    this.errorData,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppResponse<T> &&
        other.message == message &&
        other.result == result &&
        other.errorData == errorData &&
        other.statusCode == statusCode;
  }

  @override
  int get hashCode {
    return message.hashCode ^
        result.hashCode ^
        errorData.hashCode ^
        statusCode.hashCode;
  }

  @override
  String toString() {
    return 'AppResponse(message: $message, result: $result, errorData: $errorData, statusCode: $statusCode)';
  }
}

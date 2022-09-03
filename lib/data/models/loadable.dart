import 'package:equatable/equatable.dart';

class Loadable<T> extends Equatable {
  final String? message;
  final T data;
  final LoadableStatus status;

  bool get isLoading => status == LoadableStatus.loading;
  bool get hasData => status == LoadableStatus.data;
  bool get hasError => status == LoadableStatus.error;

  const Loadable({
    required this.data,
    this.status = LoadableStatus.data,
    this.message,
  });

  Loadable<T> withData(T data) => copyWith(
        data: data,
        status: LoadableStatus.data,
      );

  Loadable<T> withError(String message, [T? data]) => copyWith(
        status: LoadableStatus.error,
        message: () => message,
        data: data,
      );

  Loadable<T> loading([T? data]) => copyWith(
        status: LoadableStatus.loading,
        data: data,
      );

  Loadable<T> copyWith({
    T? data,
    LoadableStatus? status,
    String? Function()? message,
  }) {
    return Loadable<T>(
      message: message != null ? message() : this.message,
      data: data ?? this.data,
      status: status ?? this.status,
    );
  }

  TResult when<TResult>({
    required TResult loading,
    required TResult data,
    required TResult error,
  }) =>
      isLoading
          ? loading
          : hasData
              ? data
              : error;

  TResult maybeWhen<TResult>({
    TResult? loading,
    TResult? data,
    TResult? error,
    required TResult Function() orElse,
  }) {
    if (isLoading && loading != null) return loading;
    if (hasData && data != null) return data;
    if (hasError && error != null) return error;

    return orElse();
  }

  @override
  List<Object?> get props => [data, status, message];
}

enum LoadableStatus { data, error, loading }

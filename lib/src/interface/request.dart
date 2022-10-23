/// {@template request}
/// An interface which specifies the features of all requests
/// {@endtemplate}

abstract class Request<T> {
  /// {@macro request}
  const Request({
    this.locale,
    this.conversationId,
  });

  /// The locale value specified in the request is returned, its default value is `tr`.
  final String? locale;

  /// A value that you can send and receive during the request can be used to match the request/response.
  final String? conversationId;

  /// Converts [T] to [Map]
  T fromJson(Map<String, dynamic> json);

  /// Converts [Map] to [T]
  Map<String, dynamic> toJson();
}

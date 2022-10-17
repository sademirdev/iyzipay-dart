/// An interface which specifies the features of all requests
abstract class Request<T> {
  /// Constructor of [Request]
  Request({
    this.locale,
    this.conversationId,
  });

  /// The response language, default: `tr`
  final String? locale;

  /// The id which can be used to match request and response.
  final String? conversationId;

  /// Generates the requests model T from a json
  T fromJson(Map<String, dynamic> json);

  /// Generates a json from requests model T
  Map<String, dynamic> toJson();
}

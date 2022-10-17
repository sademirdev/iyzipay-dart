/// RequestType indicates the http methods
enum RequestType {
  /// the http get method
  get,

  /// the http post method
  post,

  /// the http delete method
  delete,

  /// the http put method
  put;

  @override
  String toString() => name;
}

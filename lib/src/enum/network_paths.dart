/// NetworkPaths indicates the endpoints of the iyzipay api
enum NetworkPaths {
  /// endpoint of bin number `/payment/bin/check`
  binNumber('/payment/bin/check');

  /// NetworkPaths indicates the endpoints of the iyzipay api
  const NetworkPaths(this._path);
  final String _path;

  /// The value of the endpoint
  String get path => _path;
}

///
enum NetworkPaths {
  ///
  binNumber('/payment/bin/check');

  ///
  const NetworkPaths(this._path);
  final String _path;

  ///
  String get path => _path;
}

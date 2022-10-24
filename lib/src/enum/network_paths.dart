/// NetworkPaths indicates the endpoints of the iyzipay api
enum NetworkPaths {
  /// endpoint of health check `/payment/test`
  healthCheck('/payment/test'),

  /// endpoint of installment info `/payment/auth`
  createPayment('/payment/auth'),

  /// endpoint of installment info `/payment/detail`
  retrievePayment('/payment/detail'),

  /// endpoint of installment info `/payment/iyzipos/installment`
  installmentInfo('/payment/iyzipos/installment'),

  /// endpoint of bin number `/payment/bin/check`
  binNumber('/payment/bin/check');

  /// NetworkPaths indicates the endpoints of the iyzipay api
  const NetworkPaths(this._path);
  final String _path;

  /// The value of the endpoint
  String get path => _path;
}

enum NetworkPaths {
  createBasicPaymentPreAuth('/payment/preauth/basic'),
  createBasicPaymentPostAuth('/payment/postauth/basic'),
  createBasicPayment('/payment/auth/basic'),
  createBasicBkmInitialize('/payment/bkm/initialize/basic'),
  retrieveBasicBkm('/payment/bkm/auth/detail/basic'),
  createApproval('/payment/iyzipos/item/approve'),
  retrieveApm('/payment/apm/retrieve'),
  createApmInitialize('/payment/apm/initialize'),
  apiTest('/payment/test');

  /// NetworkPaths indicates the endpoints of the iyzipay api
  const NetworkPaths(this._path);
  final String _path;

  /// The value of the endpoint
  String get path => _path;
}

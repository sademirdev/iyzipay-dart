/// NetworkPaths indicates the endpoints of the iyzipay api
enum NetworkPaths {
  /// endpoint of approval `/payment/iyzipos/item/approve`
  approve('/payment/iyzipos/item/approve'),

  /// endpoint of disapproval `/payment/iyzipos/item/disapprove`
  disapprove('/payment/iyzipos/item/disapprove'),

  /// endpoint of checkout form initialize `/payment/iyzipos/checkoutform/initialize/auth/ecom`
  checkoutFormInitialize('/payment/iyzipos/checkoutform/initialize/auth/ecom'),

  /// endpoint of retrieving checkout form `/payment/iyzipos/checkoutform/auth/ecom/detail`
  retrieveCheckoutForm('/payment/iyzipos/checkoutform/auth/ecom/detail'),

  /// endpoint of health check `/payment/test`
  healthCheck('/payment/test'),

  /// endpoint of payment creation `/payment/auth`
  createPayment('/payment/auth'),

  /// endpoint of cancel `/payment/cancel`
  cancel('/payment/cancel'),

  /// endpoint of refund `/payment/refund`
  refund('/payment/refund'),

  /// endpoint of retrieving payment info `/payment/detail`
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

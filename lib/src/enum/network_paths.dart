/// NetworkPaths indicates the endpoints of the iyzipay api
enum NetworkPaths {
  /// endpoint of approval `/payment/iyzipos/item/approve`
  approve('/payment/iyzipos/item/approve'),

  /// endpoint of disapproval `/payment/iyzipos/item/disapprove`
  disapprove('/payment/iyzipos/item/disapprove'),

  /// endpoint of checkout form initialize `/payment/iyzipos/checkoutform/initialize/auth/ecom`
  checkoutFormInitialize('/payment/iyzipos/checkoutform/initialize/auth/ecom'),

  /// endpoint of create card `/cardstorage/card`
  card('/cardstorage/card'),

  /// endpoint of create card `/cardstorage/cards`
  cardList('/cardstorage/cards'),

  /// endpoint of initialization of bkm `/payment/bkm/initialize`
  bkmInitialize('/payment/bkm/initialize'),

  /// endpoint of retrieving bkm `/payment/bkm/auth/detail`
  bkmRetrieve('/payment/bkm/auth/detail'),

  /// endpoint of retrieving basic bkm `/payment/bkm/auth/detail/basic`
  basicBkmRetrieve('/payment/bkm/auth/detail/basic'),

  /// endpoint of initialization of bkm `/payment/bkm/initialize/basic`
  basicBkmInitialize('/payment/bkm/initialize/basic'),

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

enum NetworkPaths {
  retrieveCardBlackList('/cardstorage/blacklist/card/retrieve'),
  updateCardBlackList('/cardstorage/blacklist/card/inactive'),
  createCardBlackList('/cardstorage/blacklist/card'),
  createOrDeleteCard('/cardstorage/card'),
  createCancel('/payment/cancel'),
  retrieveBouncedBankTransferList('/reporting/settlement/bounced'),
  createBkmInitialize('/payment/bkm/initialize'),
  retrieveBkm('/payment/bkm/auth/detail'),
  retrieveBinNumber('/payment/bin/check'),
  createBasicThreedsPayment('/payment/3dsecure/auth/basic'),
  createBasicThreedsInitializePreAuth(
    '/payment/3dsecure/initialize/preauth/basic',
  ),
  createBasicThreedsInitialize('/payment/3dsecure/initialize/basic'),
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

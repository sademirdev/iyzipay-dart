enum NetworkPaths {
  createUcsInitResource('/v2/ucs/init'),
  retrieveReportingPaymentTransaction('/v2/reporting/payment/transactions'),
  retrieveReportingPaymentDetail('/v2/reporting/payment/details'),
  v2iyziLinkProducts('/v2/iyzilink/products'),

  createLoyaltyInquire('/payment/loyalty/inquire'),
  retrieveThreedsPayment('/payment/detail'),
  createThreedsPayment('/payment/3dsecure/auth'),
  createThreedsInitializePreAuth('/payment/3dsecure/initialize/preauth'),
  createThreedsInitialize('/payment/3dsecure/initialize'),
  retrieveSubMerchant('/onboarding/submerchant/detail'),
  updateSubMerchant('/onboarding/submerchant'),
  createSubMerchant('/onboarding/submerchant'),
  createRefundChargedFromMerchant('/payment/iyzipos/refund/merchant/charge'),
  createAmountBasedRefundRequest('/v2/payment/refund'),
  createRefund('/payment/refund'),
  retrievePayoutCompletedTransactionList(
    '/reporting/settlement/payoutcompleted',
  ),
  retrievePaymentPreAuth('/payment/detail'),
  createPaymentPreAuth('/payment/preauth'),
  createPaymentPostAuth('/payment/postauth'),
  retrievePayment('/payment/detail'),
  createPayment('/payment/auth'),
  retrievePayWithIyzico('/payment/iyzipos/checkoutform/auth/ecom/detail'),
  createPayWithIyzicoInitialize('/payment/pay-with-iyzico/initialize'),
  retrieveIyziupForm('/v1/iyziup/form/order/retrieve'),
  retrieveInstallmentInfo('/payment/iyzipos/installment'),
  createDisapproval('/payment/iyzipos/item/disapprove'),
  crateCrossBookingToSubMerchant('/crossbooking/send'),
  createCrossBookingFromSubMerchant('/crossbooking/receive'),
  createCheckoutFormInitializePreAuth(
    '/payment/iyzipos/checkoutform/initialize/preauth/ecom',
  ),
  createCheckoutFormInitialize(
    '/payment/iyzipos/checkoutform/initialize/auth/ecom',
  ),
  retrieveCheckoutForm('/payment/iyzipos/checkoutform/auth/ecom/detail'),
  createCardManagementPageInitialize('/v1/card-management/pages'),
  retrieveCardList('/cardstorage/cards'),
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

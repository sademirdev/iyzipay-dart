import 'package:iyzipay/iyzipay.dart';
import 'package:test/test.dart';

import '../../config.dart';

void main() {
  /// Note: [TestConfig] has been ignored by git, so you need your own,
  /// or just put the values
  final iyzipay = Iyzipay(
    options: IyzipayOptions(
      baseUrl: TestConfig.baseUrl,
      apiKey: TestConfig.apiKey,
      secretKey: TestConfig.secretKey,
    ),
  );

  group('Initialize Checkout Form Test -', () {
    test('Should initialize checkout form', () async {
      final response = await iyzipay.checkoutForm.retrieve(
        request: const RetrieveCheckoutFormRequest(
          token: '840ff98f-d2a5-409a-8dfe-43d487311a35',
        ),
      );

      // ignore: avoid_print
      // print(response?.errorMessage);

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.token, isNotNull);
      expect(response?.callbackUrl, isNotNull);
      expect(response?.paymentStatus, isNotNull);
      expect(response?.price, isNotNull);
      expect(response?.paidPrice, isNotNull);
      expect(response?.installment, isNotNull);
      expect(response?.paymentId, isNotNull);
      expect(response?.fraudStatus, isNotNull);
      expect(response?.merchantCommissionRate, isNotNull);
      expect(response?.merchantCommissionRateAmount, isNotNull);
      expect(response?.iyziCommissionFee, isNotNull);
      expect(response?.iyziCommissionRateAmount, isNotNull);
      expect(response?.cardType, isNotNull);
      expect(response?.cardAssociation, isNotNull);
      expect(response?.cardFamily, isNotNull);
      expect(response?.binNumber, isNotNull);
      expect(response?.lastFourDigits, isNotNull);
      expect(response?.basketId, isNotNull);
      expect(response?.itemTransactions, isNotNull);
      expect(response?.itemTransactions?.first, isNotNull);
      expect(response?.itemTransactions?.first?.blockageRate, isNotNull);
      expect(response?.itemTransactions?.first?.blockageRateAmountMerchant, isNotNull);
      expect(response?.itemTransactions?.first?.blockageRateAmountSubMerchant, isNotNull);
      expect(response?.itemTransactions?.first?.blockageResolvedDate, isNotNull);
      expect(response?.itemTransactions?.first?.convertedPayout, isNotNull);
      expect(response?.itemTransactions?.first?.itemId, isNotNull);
      expect(response?.itemTransactions?.first?.iyziCommissionFee, isNotNull);
      expect(response?.itemTransactions?.first?.iyziCommissionRateAmount, isNotNull);
      expect(response?.itemTransactions?.first?.merchantCommissionRate, isNotNull);
      expect(response?.itemTransactions?.first?.merchantCommissionRateAmount, isNotNull);
      expect(response?.itemTransactions?.first?.merchantPayoutAmount, isNotNull);
      expect(response?.itemTransactions?.first?.paidPrice, isNotNull);
      expect(response?.itemTransactions?.first?.paymentTransactionId, isNotNull);
      expect(response?.itemTransactions?.first?.price, isNotNull);
      expect(response?.itemTransactions?.first?.subMerchantPayoutAmount, isNotNull);
      expect(response?.itemTransactions?.first?.subMerchantPayoutRate, isNotNull);
      expect(response?.itemTransactions?.first?.subMerchantPrice, isNotNull);
      expect(response?.itemTransactions?.first?.transactionStatus, isNotNull);
    });
  });
}

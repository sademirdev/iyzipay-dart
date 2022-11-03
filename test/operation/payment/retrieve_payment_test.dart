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
  group('Retrieve Payment Test -', () {
    test('should retrieve payment info', () async {
      final response = await iyzipay.payment.retrieve(
        request: RetrievePaymentRequest(
          locale: IyzipayLocale.tr.value,
          conversationId: '123456789',
          paymentId: '18450227',
          paymentConversationId: '123456789',
        ),
      );

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.systemTime, isNotNull);
      expect(response?.conversationId, '123456789');

      expect(response?.paymentStatus, 'SUCCESS');
      expect(response?.price, 1.0);
      expect(response?.paidPrice, 1.2);
      expect(response?.installment, 1);
      expect(response?.paymentId, isNotNull);
      expect(response?.fraudStatus, 1);
      expect(response?.merchantCommissionRate, 20.0);
      expect(response?.merchantCommissionRateAmount, 0.2);
      expect(response?.iyziCommissionRateAmount, 0.048);
      expect(response?.iyziCommissionFee, 0.25);
      expect(response?.cardType, CardType.creditCard);
      expect(response?.cardAssociation, CardAssociation.masterCard);
      expect(response?.cardFamily, 'Paraf');
      expect(response?.binNumber, '552879');
      expect(response?.lastFourDigits, '0008');
      expect(response?.basketId, 'B67832');
      expect(response?.currency, Currency.tl);

      expect(response?.itemTransactions?.first?.itemId, 'BI101');
      expect(response?.itemTransactions?.first?.paymentTransactionId, isNotNull);
      expect(response?.itemTransactions?.first?.transactionStatus, 2);
      expect(response?.itemTransactions?.first?.price, 0.3);
      expect(response?.itemTransactions?.first?.paidPrice, 0.36);
      expect(response?.itemTransactions?.first?.merchantCommissionRate, 20.0);
      expect(response?.itemTransactions?.first?.merchantCommissionRateAmount, 0.06);
      expect(response?.itemTransactions?.first?.iyziCommissionRateAmount, 0.0144);
      expect(response?.itemTransactions?.first?.iyziCommissionFee, 0.075);
      expect(response?.itemTransactions?.first?.blockageRate, 0.0);
      expect(response?.itemTransactions?.first?.blockageRateAmountMerchant, 0.0);
      expect(response?.itemTransactions?.first?.blockageRateAmountSubMerchant, 0.0);
      expect(response?.itemTransactions?.first?.blockageResolvedDate, isNotNull);
      expect(response?.itemTransactions?.first?.subMerchantPrice, 0.0);
      expect(response?.itemTransactions?.first?.subMerchantPayoutRate, 0.0);
      expect(response?.itemTransactions?.first?.subMerchantPayoutAmount, 0.0);
      expect(response?.itemTransactions?.first?.merchantPayoutAmount, 0.2706);
    });
  });
}

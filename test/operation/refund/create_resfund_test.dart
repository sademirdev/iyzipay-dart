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
  group('Create Refund Test -', () {
    test('Should refund payment', () async {
      const conversationId = '123456789';

      final response = await iyzipay.refund.create(
        request: CreateRefundRequest(
          locale: IyzipayLocale.tr.value,
          conversationId: conversationId,
          paymentTransactionId: '19659727',
          price: '0.3',
          currency: Currency.tl,
          ip: '85.34.78.112',
        ),
      );

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);

      expect(response?.systemTime, isNotNull);
      expect(response?.conversationId, conversationId);
      expect(response?.paymentId, isNotNull);
      expect(response?.paymentTransactionId, isNotNull);
      expect(response?.price, 0.3);
      expect(response?.currency, Currency.tl);
    });
  });
}

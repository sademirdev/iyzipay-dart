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

  group('Create Cancel Test -', () {
    test('Should cancel payment', () async {
      final response = await iyzipay.cancel.create(
        request: CreateCancelRequest(
          locale: IyzipayLocale.tr.value,
          conversationId: '123456789',
          paymentId: '18441405',
          ip: '85.34.78.112',
        ),
      );

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.paymentId, '18441405');
      expect(response?.currency, Currency.tl);
      expect(response?.price, 1.2);
    });
  });
}

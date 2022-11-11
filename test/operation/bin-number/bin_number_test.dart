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

  group('Bin Number Test -', () {
    test('retrieve bin number test', () async {
      final response = await iyzipay.binNumber.retrieve(
        request: const RetrieveBinNumberRequest(
          conversationId: '12345',
          binNumber: '589004',
        ),
      );

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.conversationId, isNotNull);
      expect(response?.systemTime, isNotNull);

      expect(response?.bankCode, isNotNull);
      expect(response?.bankName, isNotNull);
      expect(response?.binNumber, isNotNull);
      expect(response?.cardAssociation, isNotNull);
      expect(response?.cardFamily, isNotNull);
      expect(response?.cardType, isNotNull);
      expect(response?.commercial, isNotNull);

      expect(response?.errorCode, isNull);
      expect(response?.errorGroup, isNull);
      expect(response?.errorMessage, isNull);
    });
  });
}

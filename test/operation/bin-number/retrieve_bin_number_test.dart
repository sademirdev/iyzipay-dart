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

  group('Retrieve Bin Number Test -', () {
    /// it is taken from [https://dev.iyzipay.com/tr/test-kartlari]
    const binNumber = '589004';
    const locale = 'en';
    const conversationId = '12345';
    const statusSuccess = 'success';

    test('Should return successful response', () async {
      final response = await iyzipay.binNumber.retrieve(
        request: const RetrieveBinNumberRequest(
          binNumber: binNumber,
          locale: locale,
          conversationId: conversationId,
        ),
      );

      expect(response?.status.toString(), statusSuccess);
      expect(response?.locale.toString(), locale);
      expect(response?.conversationId, conversationId);
      expect(response?.systemTime, isNotNull);

      expect(response?.bankCode, isNotNull);
      expect(response?.bankName, isNotNull);
      expect(response?.binNumber, isNotNull);
      expect(response?.cardAssociation, isNotNull);
      expect(response?.cardFamily, isNotNull);
      expect(response?.cardType, isNotNull);
      expect(response?.commercial, isNotNull);

      expect(response?.errorCode, isNull);
      expect(response?.errorMessage, isNull);
    });
  });
}

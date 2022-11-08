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

  group('Delete Card Test -', () {
    test('Should delete card', () async {
      final response = await iyzipay.card.delete(
        request: const DeleteCardRequest(
          cardUserKey: 'm6C8sMdb47Vg3lSGm/r1lHf5Rm0=',
          cardToken: 'AmUyDXHOFGm/TGINAATCF+20zJM=',
        ),
      );

      // print(response?.errorMessage);

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, isNotNull);
      expect(response?.systemTime, isNotNull);

      expect(response?.errorCode, isNull);
      expect(response?.errorGroup, isNull);
      expect(response?.errorMessage, isNull);
    });
  });
}

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

  group('Create Card Test -', () {
    test('Should create card and user', () async {
      final response = await iyzipay.card.retrieve(
        request: const RetrieveCardsRequest(
          cardUserKey: 'ZzMZmGTX91ELl1CoB2I2vzuB2Dg=',
        ),
      );

      print(response?.errorMessage);

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, isNotNull);
      expect(response?.systemTime, isNotNull);
      expect(response?.cardUserKey, isNotNull);
      expect(response?.cardDetails, isNotNull);
      expect(response?.cardDetails?.first, isNotNull);
      expect(response?.cardDetails?.first?.cardAlias, isNotNull);
      expect(response?.cardDetails?.first?.cardToken, isNotNull);
      expect(response?.cardDetails?.first?.binNumber, isNotNull);
      expect(response?.cardDetails?.first?.lastFourDigits, isNotNull);
      expect(response?.cardDetails?.first?.cardType, isNotNull);
      expect(response?.cardDetails?.first?.cardAssociation, isNotNull);
      expect(response?.cardDetails?.first?.cardFamily, isNotNull);
      expect(response?.cardDetails?.first?.cardBankCode, isNotNull);
      expect(response?.cardDetails?.first?.cardBankName, isNotNull);
    });
  });
}

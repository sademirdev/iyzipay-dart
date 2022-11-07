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
      final response = await iyzipay.card.create(
        request: CreateCardRequest(
          locale: IyzipayLocale.tr.value,
          conversationId: '123456789',
          email: 'email@email.com', // email cannot be null for creating card and user
          card: const Card(
            cardAlias: 'card alias',
            cardHolderName: 'John Doe',
            cardNumber: '5528790000000008',
            expireMonth: '12',
            expireYear: '2030',
          ),
        ),
      );

      print(response?.errorMessage);

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.binNumber, isNotNull);
      expect(response?.cardAlias, isNotNull);
      expect(response?.cardAssociation, isNotNull);
      expect(response?.cardBankCode, isNotNull);
      expect(response?.cardBankName, isNotNull);
      expect(response?.cardFamily, isNotNull);
      expect(response?.cardToken, isNotNull);
      expect(response?.cardType, isNotNull);
      expect(response?.cardUserKey, isNotNull);
      expect(response?.email, isNotNull);
      expect(response?.lastFourDigits, isNotNull);
      expect(response?.conversationId, isNotNull);

      expect(response?.errorCode, isNull);
      expect(response?.errorGroup, isNull);
      expect(response?.errorMessage, isNull);
    });
  });
}

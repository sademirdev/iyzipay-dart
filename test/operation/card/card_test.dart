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
    var cardUserKey = '';

    test('create card and user test', () async {
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

      // print(response?.errorMessage);

      cardUserKey = response?.cardUserKey ?? '';

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

    test('create secondary card', () async {
      final response = await iyzipay.card.create(
        request: CreateCardRequest(
          locale: IyzipayLocale.tr.value,
          conversationId: '123456789',
          cardUserKey: cardUserKey, // if cardUserKey is null response will return error
          card: const Card(
            cardAlias: 'card alias',
            cardHolderName: 'John Doe',
            cardNumber: '5528790000000008',
            expireMonth: '12',
            expireYear: '2030',
          ),
        ),
      );

      // print(response?.errorMessage);

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.systemTime, isNotNull);
      expect(response?.cardUserKey, isNotNull);
      expect(response?.cardToken, isNotNull);
      expect(response?.cardAlias, isNotNull);
      expect(response?.binNumber, isNotNull);
      expect(response?.cardType, isNotNull);
      expect(response?.cardAssociation, isNotNull);
      expect(response?.cardFamily, isNotNull);
      expect(response?.cardBankCode, isNotNull);
      expect(response?.cardBankName, isNotNull);

      expect(response?.errorCode, isNull);
      expect(response?.errorGroup, isNull);
      expect(response?.errorMessage, isNull);
    });
  });

  group('Delete Card Test -', () {
    var cardUserKey = '';
    var cardToken = '';

    setUp(
      () async {
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

        // print(response?.errorMessage);

        cardUserKey = response?.cardUserKey ?? '';
        cardToken = response?.cardToken ?? '';
      },
    );

    test('delete card test', () async {
      final response = await iyzipay.card.delete(
        request: DeleteCardRequest(
          cardUserKey: cardUserKey,
          cardToken: cardToken,
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

  group('Retrieve Cards Test -', () {
    var cardUserKey = '';

    setUp(
      () async {
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

        // print(response?.errorMessage);

        cardUserKey = response?.cardUserKey ?? '';
      },
    );

    test('retrieve cards test', () async {
      final response = await iyzipay.card.retrieve(
        request: RetrieveCardsRequest(
          cardUserKey: cardUserKey,
        ),
      );

      // print(response?.errorMessage);

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

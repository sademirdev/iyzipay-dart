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

  group('Retrieve Installment Info Test -', () {
    test('should retrieve installments', () async {
      final response = await iyzipay.installmentInfo.retrieve(
        request: RetrieveInstallmentInfoRequest(
          binNumber: '554960',
          price: Utils.formatPrice('100') ?? '12.0',
        ),
      );

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.systemTime, isNotNull);

      expect(response?.installmentDetails?.first?.bankCode, isNotNull);
      expect(response?.installmentDetails?.first?.bankName, isNotNull);
      expect(response?.installmentDetails?.first?.binNumber, isNotNull);
      expect(response?.installmentDetails?.first?.cardAssociation, isNotNull);
      expect(response?.installmentDetails?.first?.cardFamilyName, isNotNull);
      expect(response?.installmentDetails?.first?.cardType, isNotNull);
      expect(response?.installmentDetails?.first?.commercial, isNotNull);
      expect(response?.installmentDetails?.first?.force3ds, isNotNull);
      expect(response?.installmentDetails?.first?.forceCvc, isNotNull);
      expect(response?.installmentDetails?.first?.price, isNotNull);

      expect(response?.installmentDetails?.first?.installmentPrices?.first?.installmentNumber, isNotNull);
      expect(response?.installmentDetails?.first?.installmentPrices?.first?.installmentPrice, isNotNull);
      expect(response?.installmentDetails?.first?.installmentPrices?.first?.totalPrice, isNotNull);

      expect(response?.errorCode, isNull);
      expect(response?.errorMessage, isNull);
    });

    test('should retrieve installments specifically', () async {
      final response = await iyzipay.installmentInfo.retrieve(
        request: RetrieveInstallmentInfoRequest(
          price: Utils.formatPrice('100') ?? '100.0',
          binNumber: '554960',
        ),
      );

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.systemTime, isNotNull);

      expect(response?.installmentDetails?.first?.bankCode, 62);
      expect(response?.installmentDetails?.first?.bankName, 'Garanti Bankası');
      expect(response?.installmentDetails?.first?.binNumber, '554960');
      expect(response?.installmentDetails?.first?.cardAssociation, CardAssociation.masterCard);
      expect(response?.installmentDetails?.first?.cardFamilyName, 'Bonus');
      expect(response?.installmentDetails?.first?.cardType, CardType.creditCard);
      expect(response?.installmentDetails?.first?.commercial, 0);
      expect(response?.installmentDetails?.first?.force3ds, 0);
      expect(response?.installmentDetails?.first?.forceCvc, 0);
      expect(response?.installmentDetails?.first?.price, 100.0);

      expect(response?.installmentDetails?.first?.installmentPrices?.first?.installmentNumber, 1);
      expect(response?.installmentDetails?.first?.installmentPrices?.first?.installmentPrice, 100.0);
      expect(response?.installmentDetails?.first?.installmentPrices?.first?.totalPrice, 100.0);

      expect(response?.installmentDetails?.first?.installmentPrices?[5]?.installmentNumber, 12);
      expect(response?.installmentDetails?.first?.installmentPrices?[5]?.installmentPrice, 9.2);
      expect(response?.installmentDetails?.first?.installmentPrices?[5]?.totalPrice, 110.34);

      expect(response?.errorCode, isNull);
      expect(response?.errorMessage, isNull);
    });
  });
}

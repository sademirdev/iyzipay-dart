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

  group('Cancel Test -', () {
    var paymentId = '';

    setUp(
      () async {
        final response = await iyzipay.payment.create(
          request: CreatePaymentRequest(
            locale: 'tr',
            conversationId: '123456789',
            price: Utils.formatPrice('1') ?? '1.0',
            paidPrice: Utils.formatPrice('1.2') ?? '1.2',
            installment: 1,
            paymentChannel: PaymentChannel.web,
            basketId: 'B67832',
            paymentGroup: PaymentGroup.product,
            paymentCard: const PaymentCard(
              cardHolderName: 'John Doe',
              cardNumber: '5528790000000008',
              expireYear: '2030',
              expireMonth: '12',
              cvc: '123',
              registerCard: 0,
            ),
            buyer: const Buyer(
              id: 'BY789',
              name: 'John',
              surname: 'Doe',
              identityNumber: '74300864791',
              email: 'email@email.com',
              gsmNumber: '+905350000000',
              registrationDate: '2013-04-21 15:12:09',
              lastLoginDate: '2015-10-05 12:43:35',
              registrationAddress: 'Nidakule Göztepe, Merdivenköy Mah. Bora Sok. No:1',
              city: 'Istanbul',
              country: 'Turkey',
              zipCode: '34732',
              ip: '85.34.78.112',
            ),
            shippingAddress: const Address(
              address: 'Nidakule Göztepe, Merdivenköy Mah. Bora Sok. No:1',
              zipCode: '34742',
              contactName: 'Jane Doe',
              city: 'Istanbul',
              country: 'Turkey',
            ),
            billingAddress: const Address(
              address: 'Nidakule Göztepe, Merdivenköy Mah. Bora Sok. No:1',
              zipCode: '34742',
              contactName: 'Jane Doe',
              city: 'Istanbul',
              country: 'Turkey',
            ),
            basketItems: [
              BasketItem(
                id: 'BI101',
                price: Utils.formatPrice('0.3') ?? '0.3',
                name: 'Binocular',
                category1: 'Collectibles',
                category2: 'Accessories',
                itemType: BasketItemType.physical,
              ),
              BasketItem(
                id: 'BI102',
                price: Utils.formatPrice('0.5') ?? '0.5',
                name: 'Game code',
                category1: 'Game',
                category2: 'Online Game Items',
                itemType: BasketItemType.virtual,
              ),
              BasketItem(
                id: 'BI103',
                price: Utils.formatPrice('0.2') ?? '0.2',
                name: 'Usb',
                category1: 'Electronics',
                category2: 'Usb / Cable',
                itemType: BasketItemType.physical,
              ),
            ],
            currency: Currency.tl,
          ),
        );

        paymentId = response?.paymentId ?? '';
      },
    );

    test('cancel payment test', () async {
      final response = await iyzipay.cancel.create(
        request: CreateCancelRequest(
          locale: IyzipayLocale.tr.value,
          conversationId: '123456789',
          paymentId: paymentId,
          ip: '85.34.78.112',
        ),
      );

      // print(response?.errorMessage);

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);

      expect(response?.paymentId, isNotNull);
      expect(response?.currency, isNotNull);
      expect(response?.price, isNotNull);
    });
  });
}

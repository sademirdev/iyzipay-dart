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
  group('Create Payment Test -', () {
    test('should create marketplace payment', () async {
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

      print(response?.paymentId);
      print(response?.itemTransactions?.first?.paymentTransactionId);

      expect(response?.status, IyzipayStatus.success);
      expect(response?.locale, IyzipayLocale.tr);
      expect(response?.systemTime, isNotNull);
      expect(response?.conversationId, '123456789');

      expect(response?.price, 1.0);
      expect(response?.paidPrice, 1.2);
      expect(response?.installment, 1);
      expect(response?.paymentId, isNotNull);
      expect(response?.fraudStatus, 1);
      expect(response?.merchantCommissionRate, 20.0);
      expect(response?.merchantCommissionRateAmount, 0.2);
      expect(response?.iyziCommissionRateAmount, 0.048);
      expect(response?.iyziCommissionFee, 0.25);
      expect(response?.cardType, CardType.creditCard);
      expect(response?.cardAssociation, CardAssociation.masterCard);
      expect(response?.cardFamily, 'Paraf');
      expect(response?.binNumber, '552879');
      expect(response?.lastFourDigits, '0008');
      expect(response?.basketId, 'B67832');
      expect(response?.currency, Currency.tl);

      expect(response?.itemTransactions?.first?.itemId, 'BI101');
      expect(response?.itemTransactions?.first?.paymentTransactionId, isNotNull);
      expect(response?.itemTransactions?.first?.transactionStatus, 2);
      expect(response?.itemTransactions?.first?.price, 0.3);
      expect(response?.itemTransactions?.first?.paidPrice, 0.36);
      expect(response?.itemTransactions?.first?.merchantCommissionRate, 20.0);
      expect(response?.itemTransactions?.first?.merchantCommissionRateAmount, 0.06);
      expect(response?.itemTransactions?.first?.iyziCommissionRateAmount, 0.0144);
      expect(response?.itemTransactions?.first?.iyziCommissionFee, 0.075);
      expect(response?.itemTransactions?.first?.blockageRate, 0.0);
      expect(response?.itemTransactions?.first?.blockageRateAmountMerchant, 0.0);
      expect(response?.itemTransactions?.first?.blockageRateAmountSubMerchant, 0.0);
      expect(response?.itemTransactions?.first?.blockageResolvedDate, isNotNull);
      expect(response?.itemTransactions?.first?.subMerchantPrice, 0.0);
      expect(response?.itemTransactions?.first?.subMerchantPayoutRate, 0.0);
      expect(response?.itemTransactions?.first?.subMerchantPayoutAmount, 0.0);
      expect(response?.itemTransactions?.first?.merchantPayoutAmount, 0.2706);
    });
  });
}

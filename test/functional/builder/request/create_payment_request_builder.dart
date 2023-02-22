import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:iyzipay/src/models/basket_item.dart';
import 'package:iyzipay/src/models/buyer.dart';
import 'package:iyzipay/src/models/loyalty/loyalty.dart';
import 'package:iyzipay/src/models/payment_card.dart';
import 'package:iyzipay/src/requests/create_payment_request.dart';

import '../address_builder.dart';
import '../buyer_builder.dart';
import '../payment_card_builder.dart';
import 'base_request_builder.dart';

class CreatePaymentRequestBuilder extends BaseRequestBuilder {
  const CreatePaymentRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.price,
    required this.paidPrice,
    required this.installment,
    required this.paymentChannel,
    required this.basketId,
    required this.paymentGroup,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
    required this.currency,
    required this.paymentCard,
    required this.paymentSource,
    required this.callbackUrl,
    required this.posOrderId,
    required this.connectorName,
    required this.gsmNumber,
    required this.reward,
  });

  CreatePaymentRequestBuilder.create()
      : price = 1.0,
        paidPrice = 1.1,
        installment = 1,
        paymentChannel = PaymentChannel.web,
        basketId = 'B67832',
        paymentGroup = null,
        buyer = const BuyerBuilder.create().build(),
        shippingAddress = const AddressBuilder.create().build(),
        billingAddress = const AddressBuilder.create().build(),
        basketItems = null,
        currency = Currency.TRY,
        paymentCard = const PaymentCardBuilder.create()
            .buildWithCardCredentials()
            .build(),
        paymentSource = null,
        callbackUrl = null,
        posOrderId = null,
        connectorName = null,
        gsmNumber = null,
        reward = null;

  final double price;
  final double paidPrice;
  final int installment;
  final PaymentChannel paymentChannel;
  final String basketId;
  final PaymentGroup? paymentGroup;
  final Buyer buyer;
  final Address shippingAddress;
  final Address billingAddress;
  final List<BasketItem>? basketItems;
  final Currency currency;
  final PaymentCard paymentCard;
  final String? paymentSource;
  final String? callbackUrl;
  final String? posOrderId;
  final String? connectorName;
  final String? gsmNumber;
  final Loyalty? reward;

  CreatePaymentRequest build() {
    assert(
      paymentGroup != null &&
          basketItems != null &&
          paymentSource != null &&
          posOrderId != null &&
          connectorName != null &&
          callbackUrl != null &&
          gsmNumber != null,
      '[paymentGroup], [basketItems], [paymentSource], [posOrderId], [connectorName], [callbackUrl], [posOrderId], [gsmNumber] cannot be null. They should be initialized via compWith() method',
    );

    return CreatePaymentRequest(
      locale: locale,
      conversationId: conversationId,
      price: price,
      paidPrice: paidPrice,
      paymentChannel: paymentChannel,
      basketId: basketId,
      paymentGroup: paymentGroup!,
      paymentCard: paymentCard,
      buyer: buyer,
      shippingAddress: shippingAddress,
      billingAddress: billingAddress,
      basketItems: basketItems!,
      paymentSource: paymentSource!,
      currency: currency,
      posOrderId: posOrderId!,
      connectorName: connectorName!,
      callbackUrl: callbackUrl!,
      gsmNumber: gsmNumber!,
      reward: reward,
    );
  }

  CreatePaymentRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    double? price,
    double? paidPrice,
    int? installment,
    PaymentChannel? paymentChannel,
    String? basketId,
    PaymentGroup? paymentGroup,
    Buyer? buyer,
    Address? shippingAddress,
    Address? billingAddress,
    List<BasketItem>? basketItems,
    Currency? currency,
    PaymentCard? paymentCard,
    String? paymentSource,
    String? callbackUrl,
    String? posOrderId,
    String? connectorName,
    String? gsmNumber,
    Loyalty? reward,
  }) {
    return CreatePaymentRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      price: price ?? this.price,
      paidPrice: paidPrice ?? this.paidPrice,
      installment: installment ?? this.installment,
      paymentChannel: paymentChannel ?? this.paymentChannel,
      basketId: basketId ?? this.basketId,
      paymentGroup: paymentGroup ?? this.paymentGroup,
      buyer: buyer ?? this.buyer,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      billingAddress: billingAddress ?? this.billingAddress,
      basketItems: basketItems ?? this.basketItems,
      currency: currency ?? this.currency,
      paymentCard: paymentCard ?? this.paymentCard,
      paymentSource: paymentSource ?? this.paymentSource,
      callbackUrl: callbackUrl ?? this.callbackUrl,
      posOrderId: posOrderId ?? this.posOrderId,
      connectorName: connectorName ?? this.connectorName,
      gsmNumber: gsmNumber ?? this.gsmNumber,
      reward: reward ?? this.reward,
    );
  }
}

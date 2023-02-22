import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:iyzipay/src/models/basket_item.dart';
import 'package:iyzipay/src/models/buyer.dart';
import 'package:iyzipay/src/requests/create_checkout_form_initialize_request.dart';

import '../../util/random_generator.dart';
import '../address_builder.dart';
import '../buyer_builder.dart';
import 'base_request_builder.dart';

class CreateCheckoutFormInitializeRequestBuilder extends BaseRequestBuilder {
  const CreateCheckoutFormInitializeRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.basketId,
    required this.paymentGroup,
    required this.currency,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.enabledInstallments,
    required this.basketItems,
    required this.callbackUrl,
    required this.forceThreeDS,
    required this.cardUserKey,
    required this.posOrderId,
    required this.paymentSource,
    required this.price,
    required this.paidPrice,
  });

  CreateCheckoutFormInitializeRequestBuilder.create()
      : basketId = RandomGenerator.randomId(),
        paymentGroup = PaymentGroup.listing,
        currency = Currency.TRY,
        buyer = const BuyerBuilder.create().build(),
        shippingAddress = const AddressBuilder.create().build(),
        billingAddress = const AddressBuilder.create().build(),
        enabledInstallments = [2, 3, 6, 9],
        basketItems = null,
        callbackUrl = null,
        forceThreeDS = null,
        cardUserKey = null,
        posOrderId = null,
        paymentSource = null,
        price = null,
        paidPrice = null;

  final String basketId;
  final PaymentGroup paymentGroup;
  final Currency currency;
  final Buyer buyer;
  final Address shippingAddress;
  final Address billingAddress;
  final List<int> enabledInstallments;
  final List<BasketItem>? basketItems;
  final String? callbackUrl;
  final int? forceThreeDS;
  final String? cardUserKey;
  final String? posOrderId;
  final String? paymentSource;
  final double? price;
  final double? paidPrice;

  CreateCheckoutFormInitializeRequest build() {
    assert(
      price != null &&
          paidPrice != null &&
          paymentSource != null &&
          basketItems != null &&
          callbackUrl != null &&
          cardUserKey != null &&
          posOrderId != null,
      '[price], [paidPrice], [paymentSource], [basketItems], [callbackUrl], [cardUserKey], [posOrderId] cannot be null. They should be initialized via compWith() method',
    );

    return CreateCheckoutFormInitializeRequest(
      locale: locale,
      conversationId: conversationId,
      price: price!,
      paidPrice: paidPrice!,
      basketId: basketId,
      paymentGroup: paymentGroup,
      paymentSource: paymentSource!,
      currency: currency,
      buyer: buyer,
      shippingAddress: shippingAddress,
      billingAddress: billingAddress,
      basketItems: basketItems!,
      callbackUrl: callbackUrl!,
      cardUserKey: cardUserKey!,
      posOrderId: posOrderId!,
      enabledInstallments: enabledInstallments,
    );
  }

  CreateCheckoutFormInitializeRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? basketId,
    PaymentGroup? paymentGroup,
    Currency? currency,
    Buyer? buyer,
    Address? shippingAddress,
    Address? billingAddress,
    List<int>? enabledInstallments,
    List<BasketItem>? basketItems,
    String? callbackUrl,
    int? forceThreeDS,
    String? cardUserKey,
    String? posOrderId,
    String? paymentSource,
    double? price,
    double? paidPrice,
  }) {
    return CreateCheckoutFormInitializeRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      basketId: basketId ?? this.basketId,
      paymentGroup: paymentGroup ?? this.paymentGroup,
      currency: currency ?? this.currency,
      buyer: buyer ?? this.buyer,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      billingAddress: billingAddress ?? this.billingAddress,
      enabledInstallments: enabledInstallments ?? this.enabledInstallments,
      basketItems: basketItems ?? this.basketItems,
      callbackUrl: callbackUrl ?? this.callbackUrl,
      forceThreeDS: forceThreeDS ?? this.forceThreeDS,
      cardUserKey: cardUserKey ?? this.cardUserKey,
      posOrderId: posOrderId ?? this.posOrderId,
      paymentSource: paymentSource ?? this.paymentSource,
      price: price ?? this.price,
      paidPrice: paidPrice ?? this.paidPrice,
    );
  }
}

import 'package:iyzipay/src/enums/iyzipay_locale.dart';
import 'package:iyzipay/src/enums/payment_group.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:iyzipay/src/models/basket_item.dart';
import 'package:iyzipay/src/models/buyer.dart';
import 'package:iyzipay/src/requests/create_bkm_initialize_request.dart';

import '../../util/random_generator.dart';
import '../address_builder.dart';
import '../basket_item_builder.dart';
import '../buyer_builder.dart';
import 'base_request_builder.dart';

class CreateBkmInitializeRequestBuilder extends BaseRequestBuilder {
  const CreateBkmInitializeRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.basketId,
    required this.paymentGroup,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
    required this.callbackUrl,
    required this.paymentSource,
    required this.price,
  });

  CreateBkmInitializeRequestBuilder.create()
      : basketId = RandomGenerator.randomId(),
        paymentGroup = PaymentGroup.listing,
        buyer = const BuyerBuilder.create().build(),
        shippingAddress = const AddressBuilder.create().build(),
        billingAddress = const AddressBuilder.create().build(),
        basketItems =
            const BasketItemBuilder.create().buildDefaultBasketItems(),
        callbackUrl = null,
        paymentSource = null,
        price = null;

  final String basketId;
  final PaymentGroup paymentGroup;
  final Buyer buyer;
  final Address shippingAddress;
  final Address billingAddress;
  final List<BasketItem> basketItems;
  final String? callbackUrl;
  final String? paymentSource;
  final double? price;

  CreateBkmInitializeRequest build() {
    assert(
      price != null && callbackUrl != null && paymentSource != null,
      '[price], [callbackUrl], [paymentSource] cannot be null. They should be initialized via compWith() method',
    );

    return CreateBkmInitializeRequest(
      locale: locale,
      conversationId: conversationId,
      price: price!,
      basketId: basketId,
      paymentGroup: paymentGroup,
      buyer: buyer,
      shippingAddress: shippingAddress,
      billingAddress: billingAddress,
      basketItems: basketItems,
      callbackUrl: callbackUrl!,
      paymentSource: paymentSource!,
    );
  }

  CreateBkmInitializeRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? basketId,
    PaymentGroup? paymentGroup,
    Buyer? buyer,
    Address? shippingAddress,
    Address? billingAddress,
    List<BasketItem>? basketItems,
    String? callbackUrl,
    String? paymentSource,
    double? price,
  }) {
    return CreateBkmInitializeRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      basketId: basketId ?? this.basketId,
      paymentGroup: paymentGroup ?? this.paymentGroup,
      buyer: buyer ?? this.buyer,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      billingAddress: billingAddress ?? this.billingAddress,
      basketItems: basketItems ?? this.basketItems,
      callbackUrl: callbackUrl ?? this.callbackUrl,
      paymentSource: paymentSource ?? this.paymentSource,
      price: price ?? this.price,
    );
  }
}

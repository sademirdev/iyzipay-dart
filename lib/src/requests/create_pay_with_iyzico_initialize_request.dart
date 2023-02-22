import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/currency.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:iyzipay/src/models/basket_item.dart';
import 'package:iyzipay/src/models/buyer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_pay_with_iyzico_initialize_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatePayWithIyzicoInitializeRequest
    extends BaseRequest<CreatePayWithIyzicoInitializeRequest> {
  const CreatePayWithIyzicoInitializeRequest({
    required this.price,
    required this.paidPrice,
    required this.basketId,
    required this.paymentGroup,
    required this.paymentSource,
    required this.currency,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
    required this.callbackUrl,
    this.forceThreeDS,
    required this.cardUserKey,
    required this.posOrderId,
    required this.enabledInstallments,
  });

  final String price;
  final String paidPrice;
  final String basketId;
  final String paymentGroup;
  final String paymentSource;
  final Currency currency;
  final Buyer buyer;
  final Address shippingAddress;
  final Address billingAddress;
  final List<BasketItem> basketItems;
  final String callbackUrl;
  final int? forceThreeDS;
  final String cardUserKey;
  final String posOrderId;
  final List<int> enabledInstallments;

  @override
  CreatePayWithIyzicoInitializeRequest fromJson(JsonMap json) =>
      _$CreatePayWithIyzicoInitializeRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreatePayWithIyzicoInitializeRequestToJson(this);
}

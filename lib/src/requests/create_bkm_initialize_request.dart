import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:iyzipay/src/models/basket_item.dart';
import 'package:iyzipay/src/models/buyer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_bkm_initialize_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateBkmInitializeRequest
    extends BaseRequest<CreateBkmInitializeRequest> {
  const CreateBkmInitializeRequest({
    super.locale,
    super.conversationId,
    required this.price,
    required this.basketId,
    required this.paymentGroup,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
    required this.callbackUrl,
    required this.paymentSource,
    this.currency,
    this.enabledInstallments,
  });

  final double price;
  final String basketId;
  final PaymentGroup paymentGroup;
  final Buyer buyer;
  final Address shippingAddress;
  final Address billingAddress;
  final List<BasketItem> basketItems;
  final String callbackUrl;
  final String paymentSource;
  final Currency? currency;
  final List<int>? enabledInstallments;

  @override
  CreateBkmInitializeRequest fromJson(JsonMap json) =>
      _$CreateBkmInitializeRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateBkmInitializeRequestToJson(this);
}

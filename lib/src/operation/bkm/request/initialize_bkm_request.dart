import 'package:iyzipay/src/enum/payment_group.dart';
import 'package:iyzipay/src/interface/request.dart';
import 'package:iyzipay/src/model/address.dart';
import 'package:iyzipay/src/model/basket_item.dart';
import 'package:iyzipay/src/model/buyer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_bkm_request.g.dart';

///
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class InitializeBkmRequest extends Request<InitializeBkmRequest> {
  ///
  const InitializeBkmRequest({
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
    this.paymentSource,
    required this.enabledInstallments,
  });

  ///
  final String price;

  ///
  final String basketId;

  ///
  final PaymentGroup paymentGroup;

  ///
  final Buyer buyer;

  ///
  final Address shippingAddress;

  ///
  final Address billingAddress;

  ///
  final List<BasketItem> basketItems;

  ///
  final String callbackUrl;

  ///
  final String? paymentSource;

  ///
  final List<int> enabledInstallments;

  /// Converts [InitializeBkmRequest] to [Map]
  @override
  InitializeBkmRequest fromJson(Map<String, dynamic> json) => _$InitializeBkmRequestFromJson(json);

  /// Converts [Map] to [InitializeBkmRequest]
  @override
  Map<String, dynamic> toJson() => _$InitializeBkmRequestToJson(this);
}

import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/apm_type.dart';
import 'package:iyzipay/src/enums/currency.dart';
import 'package:iyzipay/src/enums/payment_channel.dart';
import 'package:iyzipay/src/enums/payment_group.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:iyzipay/src/models/basket_item.dart';
import 'package:iyzipay/src/models/buyer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_apm_initialize_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateApmInitializeRequest
    extends BaseRequest<CreateApmInitializeRequest> {
  const CreateApmInitializeRequest({
    super.locale,
    super.conversationId,
    required this.price,
    required this.paidPrice,
    required this.paymentChannel,
    required this.paymentGroup,
    required this.paymentSource,
    required this.currency,
    required this.merchantOrderId,
    required this.countryCode,
    required this.accountHolderName,
    required this.merchantCallbackUrl,
    required this.merchantErrorUrl,
    required this.merchantNotificationUrl,
    required this.apmType,
    required this.basketId,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
  });

  final double price;
  final double paidPrice;
  final PaymentChannel paymentChannel;
  final PaymentGroup paymentGroup;
  final String paymentSource;
  final Currency currency;
  final String merchantOrderId;
  final String countryCode;
  final String accountHolderName;
  final String merchantCallbackUrl;
  final String merchantErrorUrl;
  final String merchantNotificationUrl;
  final ApmType apmType;
  final String basketId;
  final Buyer buyer;
  final Address shippingAddress;
  final Address billingAddress;
  final List<BasketItem> basketItems;

  /// Converts [JsonMap] to [CreateApmInitializeRequest]
  @override
  CreateApmInitializeRequest fromJson(JsonMap json) =>
      _$CreateApmInitializeRequestFromJson(json);

  /// Converts [CreateApmInitializeRequest] to [JsonMap]
  @override
  JsonMap toJson() => _$CreateApmInitializeRequestToJson(this);
}

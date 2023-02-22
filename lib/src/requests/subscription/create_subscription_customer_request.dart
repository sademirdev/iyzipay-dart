import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_subscription_customer_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateSubscriptionCustomerRequest
    extends BaseRequest<CreateSubscriptionCustomerRequest> {
  CreateSubscriptionCustomerRequest({
    super.locale,
    super.conversationId,
    required this.name,
    required this.surname,
    required this.identityNumber,
    required this.email,
    required this.gsmNumber,
    required this.billingAddress,
    required this.shippingAddress,
  });

  final String name;
  final String surname;
  final String identityNumber;
  final String email;
  final String gsmNumber;
  final Address billingAddress;
  final Address shippingAddress;

  @override
  CreateSubscriptionCustomerRequest fromJson(JsonMap json) =>
      _$CreateSubscriptionCustomerRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateSubscriptionCustomerRequestToJson(this);
}

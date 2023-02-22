import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_subscription_customer_request.g.dart';

@JsonSerializable(includeIfNull: false)
class UpdateSubscriptionCustomerRequest
    extends BaseRequest<UpdateSubscriptionCustomerRequest> {
  const UpdateSubscriptionCustomerRequest({
    super.locale,
    super.conversationId,
    required this.subscriptionCustomerReferenceCode,
    required this.name,
    required this.surname,
    required this.identityNumber,
    required this.email,
    required this.gsmNumber,
    required this.billingAddress,
    required this.shippingAddress,
  });

  final String subscriptionCustomerReferenceCode;
  final String name;
  final String surname;
  final String identityNumber;
  final String email;
  final String gsmNumber;
  final Address billingAddress;
  final Address shippingAddress;

  @override
  UpdateSubscriptionCustomerRequest fromJson(JsonMap json) =>
      _$UpdateSubscriptionCustomerRequestFromJson(json);

  @override
  JsonMap toJson() => _$UpdateSubscriptionCustomerRequestToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize_subscription_checkout_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeSubscriptionCheckoutFormRequest
    _$InitializeSubscriptionCheckoutFormRequestFromJson(
            Map<String, dynamic> json) =>
        InitializeSubscriptionCheckoutFormRequest(
          callbackUrl: json['callbackUrl'] as String,
          pricingPlanReferenceCode: json['pricingPlanReferenceCode'] as String,
          subscriptionInitialStatus:
              json['subscriptionInitialStatus'] as String,
          customer: CheckoutFormCustomer.fromJson(
              json['customer'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$InitializeSubscriptionCheckoutFormRequestToJson(
        InitializeSubscriptionCheckoutFormRequest instance) =>
    <String, dynamic>{
      'callbackUrl': instance.callbackUrl,
      'pricingPlanReferenceCode': instance.pricingPlanReferenceCode,
      'subscriptionInitialStatus': instance.subscriptionInitialStatus,
      'customer': instance.customer,
    };

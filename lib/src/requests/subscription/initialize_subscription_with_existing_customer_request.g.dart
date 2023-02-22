// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize_subscription_with_existing_customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeSubscriptionWithExistingCustomerRequest
    _$InitializeSubscriptionWithExistingCustomerRequestFromJson(
            Map<String, dynamic> json) =>
        InitializeSubscriptionWithExistingCustomerRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          pricingPlanReferenceCode: json['pricingPlanReferenceCode'] as String,
          customerReferenceCode: json['customerReferenceCode'] as String,
          subscriptionInitialStatus:
              json['subscriptionInitialStatus'] as String,
        );

Map<String, dynamic> _$InitializeSubscriptionWithExistingCustomerRequestToJson(
    InitializeSubscriptionWithExistingCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['pricingPlanReferenceCode'] = instance.pricingPlanReferenceCode;
  val['customerReferenceCode'] = instance.customerReferenceCode;
  val['subscriptionInitialStatus'] = instance.subscriptionInitialStatus;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

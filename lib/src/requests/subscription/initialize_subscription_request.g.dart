// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize_subscription_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeSubscriptionRequest _$InitializeSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    InitializeSubscriptionRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentCard: SubscriptionCardData.fromJson(
          json['paymentCard'] as Map<String, dynamic>),
      customer: CheckoutFormCustomer.fromJson(
          json['customer'] as Map<String, dynamic>),
      pricingPlanReferenceCode: json['pricingPlanReferenceCode'] as String,
      subscriptionInitialStatus: json['subscriptionInitialStatus'] as String,
    );

Map<String, dynamic> _$InitializeSubscriptionRequestToJson(
    InitializeSubscriptionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentCard'] = instance.paymentCard;
  val['customer'] = instance.customer;
  val['pricingPlanReferenceCode'] = instance.pricingPlanReferenceCode;
  val['subscriptionInitialStatus'] = instance.subscriptionInitialStatus;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

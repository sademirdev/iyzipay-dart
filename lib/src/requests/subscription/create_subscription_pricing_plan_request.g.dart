// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subscription_pricing_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSubscriptionPricingPlanRequest
    _$CreateSubscriptionPricingPlanRequestFromJson(Map<String, dynamic> json) =>
        CreateSubscriptionPricingPlanRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          subscriptionProductReferenceCode:
              json['subscriptionProductReferenceCode'] as String,
          name: json['name'] as String,
          price: (json['price'] as num).toDouble(),
          currencyCode: json['currencyCode'] as String,
          paymentInterval: json['paymentInterval'] as String,
          paymentIntervalCount: json['paymentIntervalCount'] as int?,
          trialPeriodDays: json['trialPeriodDays'] as int?,
          planPaymentType: json['planPaymentType'] as String,
          recurrenceCount: json['recurrenceCount'] as int?,
        );

Map<String, dynamic> _$CreateSubscriptionPricingPlanRequestToJson(
    CreateSubscriptionPricingPlanRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['subscriptionProductReferenceCode'] =
      instance.subscriptionProductReferenceCode;
  val['name'] = instance.name;
  val['price'] = instance.price;
  val['currencyCode'] = instance.currencyCode;
  val['paymentInterval'] = instance.paymentInterval;
  writeNotNull('paymentIntervalCount', instance.paymentIntervalCount);
  writeNotNull('trialPeriodDays', instance.trialPeriodDays);
  val['planPaymentType'] = instance.planPaymentType;
  writeNotNull('recurrenceCount', instance.recurrenceCount);
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

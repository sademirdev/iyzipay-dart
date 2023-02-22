// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_subscription_pricing_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSubscriptionPricingPlanRequest
    _$UpdateSubscriptionPricingPlanRequestFromJson(Map<String, dynamic> json) =>
        UpdateSubscriptionPricingPlanRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          subscriptionPricingPlanReferenceCode:
              json['subscriptionPricingPlanReferenceCode'] as String,
          name: json['name'] as String,
          trialPeriodDays: json['trialPeriodDays'] as int?,
        );

Map<String, dynamic> _$UpdateSubscriptionPricingPlanRequestToJson(
    UpdateSubscriptionPricingPlanRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['subscriptionPricingPlanReferenceCode'] =
      instance.subscriptionPricingPlanReferenceCode;
  val['name'] = instance.name;
  writeNotNull('trialPeriodDays', instance.trialPeriodDays);
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

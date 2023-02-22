// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upgrade_subscription_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpgradeSubscriptionRequest _$UpgradeSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    UpgradeSubscriptionRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      subscriptionReferenceCode: json['subscriptionReferenceCode'] as String,
      newPricingPlanReferenceCode:
          json['newPricingPlanReferenceCode'] as String,
      upgradePeriod: json['upgradePeriod'] as String,
      useTrial: json['useTrial'] as bool,
      resetRecurrenceCount: json['resetRecurrenceCount'] as bool,
    );

Map<String, dynamic> _$UpgradeSubscriptionRequestToJson(
    UpgradeSubscriptionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['subscriptionReferenceCode'] = instance.subscriptionReferenceCode;
  val['newPricingPlanReferenceCode'] = instance.newPricingPlanReferenceCode;
  val['upgradePeriod'] = instance.upgradePeriod;
  val['useTrial'] = instance.useTrial;
  val['resetRecurrenceCount'] = instance.resetRecurrenceCount;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

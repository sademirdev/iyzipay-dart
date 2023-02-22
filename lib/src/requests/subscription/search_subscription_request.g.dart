// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_subscription_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSubscriptionRequest _$SearchSubscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    SearchSubscriptionRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      subscriptionReferenceCode: json['subscriptionReferenceCode'] as String,
      parentReferenceCode: json['parentReferenceCode'] as String,
      customerReferenceCode: json['customerReferenceCode'] as String,
      pricingPlanReferenceCode: json['pricingPlanReferenceCode'] as String,
      subscriptionStatus:
          $enumDecode(_$SubscriptionStatusEnumMap, json['subscriptionStatus']),
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
    );

Map<String, dynamic> _$SearchSubscriptionRequestToJson(
    SearchSubscriptionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['subscriptionReferenceCode'] = instance.subscriptionReferenceCode;
  val['parentReferenceCode'] = instance.parentReferenceCode;
  val['customerReferenceCode'] = instance.customerReferenceCode;
  val['pricingPlanReferenceCode'] = instance.pricingPlanReferenceCode;
  val['subscriptionStatus'] =
      _$SubscriptionStatusEnumMap[instance.subscriptionStatus]!;
  val['startDate'] = instance.startDate;
  val['endDate'] = instance.endDate;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.merchantSuspended: -99,
  SubscriptionStatus.expired: -4,
  SubscriptionStatus.unpaid: -3,
  SubscriptionStatus.canceled: -1,
  SubscriptionStatus.active: 1,
  SubscriptionStatus.pending: 2,
  SubscriptionStatus.upgraded: 3,
};

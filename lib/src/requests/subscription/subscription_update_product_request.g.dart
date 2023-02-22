// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_update_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionUpdateProductRequest _$SubscriptionUpdateProductRequestFromJson(
        Map<String, dynamic> json) =>
    SubscriptionUpdateProductRequest(
      subscriptionProductReferenceCode:
          json['subscriptionProductReferenceCode'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$SubscriptionUpdateProductRequestToJson(
        SubscriptionUpdateProductRequest instance) =>
    <String, dynamic>{
      'subscriptionProductReferenceCode':
          instance.subscriptionProductReferenceCode,
      'name': instance.name,
      'description': instance.description,
    };

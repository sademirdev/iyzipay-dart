// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loyalty _$LoyaltyFromJson(Map<String, dynamic> json) => Loyalty(
      rewardAmount: (json['rewardAmount'] as num).toDouble(),
      rewardUsage: json['rewardUsage'] as int,
    );

Map<String, dynamic> _$LoyaltyToJson(Loyalty instance) => <String, dynamic>{
      'rewardAmount': instance.rewardAmount,
      'rewardUsage': instance.rewardUsage,
    };

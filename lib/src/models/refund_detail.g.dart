// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefundDetail _$RefundDetailFromJson(Map<String, dynamic> json) => RefundDetail(
      refundId: json['refundId'] as int,
      cancelConversationId: json['cancelConversationId'] as String,
      refundPrice: (json['refundPrice'] as num).toDouble(),
      refundStatus: json['refundStatus'] as int,
      isAfterSettlement: json['isAfterSettlement'] as bool,
      createdDate: DateTime.parse(json['createdDate'] as String),
      currencyCode: json['currencyCode'] as String,
      authCode: json['authCode'] as String,
      hostReference: json['hostReference'] as String,
      errorGroup: json['errorGroup'] as String,
      errorCode: json['errorCode'] as String,
      errorMessage: json['errorMessage'] as String,
    );

Map<String, dynamic> _$RefundDetailToJson(RefundDetail instance) =>
    <String, dynamic>{
      'refundId': instance.refundId,
      'cancelConversationId': instance.cancelConversationId,
      'refundPrice': instance.refundPrice,
      'refundStatus': instance.refundStatus,
      'isAfterSettlement': instance.isAfterSettlement,
      'createdDate': instance.createdDate.toIso8601String(),
      'currencyCode': instance.currencyCode,
      'authCode': instance.authCode,
      'hostReference': instance.hostReference,
      'errorGroup': instance.errorGroup,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_tx_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefundTxDetail _$RefundTxDetailFromJson(Map<String, dynamic> json) =>
    RefundTxDetail(
      refundTxId: json['refundTxId'] as int,
      refundConversationId: json['refundConversationId'] as String,
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

Map<String, dynamic> _$RefundTxDetailToJson(RefundTxDetail instance) =>
    <String, dynamic>{
      'refundTxId': instance.refundTxId,
      'refundConversationId': instance.refundConversationId,
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

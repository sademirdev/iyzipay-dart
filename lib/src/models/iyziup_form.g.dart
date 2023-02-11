// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iyziup_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IyziupForm _$IyziupFormFromJson(Map<String, dynamic> json) => IyziupForm(
      orderResponseStatus: json['orderResponseStatus'] as String?,
      token: json['token'] as String?,
      callbackUrl: json['callbackUrl'] as String?,
      consumer: json['consumer'] == null
          ? null
          : Consumer.fromJson(json['consumer'] as Map<String, dynamic>),
      shippingAddress: json['shippingAddress'] == null
          ? null
          : Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
      billingAddress: json['billingAddress'] == null
          ? null
          : Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      paymentDetail: json['paymentDetail'] == null
          ? null
          : IyziupPayment.fromJson(
              json['paymentDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IyziupFormToJson(IyziupForm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orderResponseStatus', instance.orderResponseStatus);
  writeNotNull('token', instance.token);
  writeNotNull('callbackUrl', instance.callbackUrl);
  writeNotNull('consumer', instance.consumer);
  writeNotNull('shippingAddress', instance.shippingAddress);
  writeNotNull('billingAddress', instance.billingAddress);
  writeNotNull('paymentDetail', instance.paymentDetail);
  return val;
}

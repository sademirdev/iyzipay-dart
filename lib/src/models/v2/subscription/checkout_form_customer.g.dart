// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_form_customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutFormCustomer _$CheckoutFormCustomerFromJson(
        Map<String, dynamic> json) =>
    CheckoutFormCustomer(
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      gsmNumber: json['gsmNumber'] as String,
      identityNumber: json['identityNumber'] as String,
      billingAddress:
          Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      shippingAddress:
          Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CheckoutFormCustomerToJson(
        CheckoutFormCustomer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'gsmNumber': instance.gsmNumber,
      'identityNumber': instance.identityNumber,
      'billingAddress': instance.billingAddress,
      'shippingAddress': instance.shippingAddress,
    };

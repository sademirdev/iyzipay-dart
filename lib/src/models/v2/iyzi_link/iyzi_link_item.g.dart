// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iyzi_link_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IyziLinkItem _$IyziLinkItemFromJson(Map<String, dynamic> json) => IyziLinkItem(
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      currency: $enumDecode(_$CurrencyEnumMap, json['currencyCode']),
      token: json['token'] as String,
      iyziLinkStatus:
          $enumDecode(_$IyziLinkStatusEnumMap, json['productStatus']),
      url: json['url'] as String,
      imageUrl: json['imageUrl'] as String,
      addressIgnorable: json['addressIgnorable'] as bool?,
      soldCount: json['soldCount'] as int?,
      soldLimit: json['soldLimit'] as int?,
      remainingSoldLimit: json['remainingSoldLimit'] as int?,
      installmentRequested: json['installmentRequested'] as bool?,
    );

Map<String, dynamic> _$IyziLinkItemToJson(IyziLinkItem instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'description': instance.description,
    'price': instance.price,
    'currencyCode': _$CurrencyEnumMap[instance.currency]!,
    'token': instance.token,
    'productStatus': _$IyziLinkStatusEnumMap[instance.iyziLinkStatus]!,
    'url': instance.url,
    'imageUrl': instance.imageUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addressIgnorable', instance.addressIgnorable);
  writeNotNull('soldCount', instance.soldCount);
  writeNotNull('soldLimit', instance.soldLimit);
  writeNotNull('remainingSoldLimit', instance.remainingSoldLimit);
  writeNotNull('installmentRequested', instance.installmentRequested);
  return val;
}

const _$CurrencyEnumMap = {
  Currency.TRY: 'TRY',
  Currency.EUR: 'EUR',
  Currency.USD: 'USD',
  Currency.IRR: 'IRR',
  Currency.GBP: 'GBP',
  Currency.NOK: 'NOK',
  Currency.RUB: 'RUB',
  Currency.CHF: 'CHF',
};

const _$IyziLinkStatusEnumMap = {
  IyziLinkStatus.deleted: 'DELETED',
  IyziLinkStatus.passive: 'PASSIVE',
  IyziLinkStatus.active: 'ACTIVE',
};

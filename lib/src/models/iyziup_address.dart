import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyziup_address.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziupAddress with JsonConvertible<IyziupAddress> {
  const IyziupAddress({
    required this.alias,
    required this.addressLine1,
    required this.addressLine2,
    required this.zipCode,
    required this.contactName,
    required this.city,
    required this.country,
  });

  final String alias;
  final String addressLine1;
  final String addressLine2;
  final String zipCode;
  final String contactName;
  final String city;
  final String country;

  @override
  IyziupAddress fromJson(JsonMap json) => _$IyziupAddressFromJson(json);

  @override
  JsonMap toJson() => _$IyziupAddressToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'buyer.g.dart';

///
@JsonSerializable(includeIfNull: false)
class Buyer {
  ///
  const Buyer({
    required this.id,
    required this.name,
    required this.surname,
    required this.identityNumber,
    required this.email,
    this.gsmNumber,
    this.registrationDate,
    this.lastLoginDate,
    required this.registrationAddress,
    required this.city,
    required this.country,
    this.zipCode,
    required this.ip,
  });

  /// Converts [Map] to [Buyer]
  factory Buyer.fromJson(Map<String, dynamic> json) => _$BuyerFromJson(json);

  /// The id of the buyer on the merchant side.
  final String id;

  /// Name of the buyer on the merchant side.
  final String name;

  /// Surname of the buyer on the merchant side.
  final String surname;

  /// Identification (TCKN) number of the buyer on the merchant side.
  final String identityNumber;

  /// The e-mail information of the recipient on the merchant side.
  /// The e-mail address must be a valid and accessible address of the recipient.
  final String email;

  /// GSM number of the recipient on the merchant side.
  final String? gsmNumber;

  /// Registration date of the buyer on the merchant side.
  ///
  /// The date format should be like this: `2015-09-17 23:45:06`.
  final String? registrationDate;

  /// The last login date of the buyer on the merchant side.
  ///
  /// The date format should be like this: `2015-09-17 23:45:06`.
  final String? lastLoginDate;

  /// Registration address of the buyer on the merchant side.
  final String registrationAddress;

  /// City information of the buyer on the merchant side.
  final String city;

  /// Country information of the buyer on the merchant side.
  final String country;

  /// The postal code of the buyer on the merchant side.
  final String? zipCode;

  /// The IP address of the recipient on the merchant side.
  final String ip;

  /// Converts [Map] to [Buyer]
  Buyer fromJson(Map<String, dynamic> json) => _$BuyerFromJson(json);

  /// Converts [Buyer] to [Map]
  Map<String, dynamic> toJson() => _$BuyerToJson(this);
}

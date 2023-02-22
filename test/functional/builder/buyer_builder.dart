import 'package:iyzipay/src/models/buyer.dart';

class BuyerBuilder {
  BuyerBuilder._({
    required this.id,
    required this.name,
    required this.surname,
    required this.identityNumber,
    required this.email,
    required this.gsmNumber,
    required this.registrationDate,
    required this.lastLoginDate,
    required this.registrationAddress,
    required this.city,
    required this.country,
    required this.zipCode,
    required this.ip,
  });

  const BuyerBuilder.create()
      : id = 'BY789',
        name = 'John',
        surname = 'Doe',
        identityNumber = '74300864791',
        email = 'email@email.com',
        gsmNumber = '+905350000000',
        registrationDate = '2013-04-21 15:12:09',
        lastLoginDate = '2015-10-05 12:43:35',
        registrationAddress =
            'Nidakule Göztepe, Merdivenköy Mah. Bora Sok. No:1',
        city = 'Istanbul',
        country = 'Turkey',
        zipCode = '34732',
        ip = '85.34.78.112';

  final String id;
  final String name;
  final String surname;
  final String identityNumber;
  final String email;
  final String gsmNumber;
  final String registrationDate;
  final String lastLoginDate;
  final String registrationAddress;
  final String city;
  final String country;
  final String zipCode;
  final String ip;

  Buyer build() {
    return Buyer(
      id: id,
      name: name,
      surname: surname,
      identityNumber: identityNumber,
      email: email,
      registrationAddress: registrationAddress,
      city: city,
      country: country,
      ip: ip,
    );
  }

  BuyerBuilder copyWith({
    String? id,
    String? name,
    String? surname,
    String? identityNumber,
    String? email,
    String? gsmNumber,
    String? registrationDate,
    String? lastLoginDate,
    String? registrationAddress,
    String? city,
    String? country,
    String? zipCode,
    String? ip,
  }) {
    return BuyerBuilder._(
      id: id ?? this.id,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      identityNumber: identityNumber ?? this.identityNumber,
      email: email ?? this.email,
      gsmNumber: gsmNumber ?? this.gsmNumber,
      registrationDate: registrationDate ?? this.registrationDate,
      lastLoginDate: lastLoginDate ?? this.lastLoginDate,
      registrationAddress: registrationAddress ?? this.registrationAddress,
      city: city ?? this.city,
      country: country ?? this.country,
      zipCode: zipCode ?? this.zipCode,
      ip: ip ?? this.ip,
    );
  }
}

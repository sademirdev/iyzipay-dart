import 'package:iyzipay/src/models/address.dart';

class AddressBuilder {
  const AddressBuilder._({
    required this.address,
    required this.zipCode,
    required this.contactName,
    required this.city,
    required this.country,
  });

  const AddressBuilder.create()
      : address = 'Nidakule Göztepe, Merdivenköy Mah. Bora Sok. No:1',
        zipCode = '34742',
        contactName = 'Jane Doe',
        city = 'Istanbul',
        country = 'Turkey';

  final String address;
  final String zipCode;
  final String contactName;
  final String city;
  final String country;

  Address build() {
    return Address(
      address: address,
      contactName: contactName,
      city: city,
      country: country,
    );
  }

  AddressBuilder copyWith({
    String? address,
    String? zipCode,
    String? contactName,
    String? city,
    String? country,
  }) {
    return AddressBuilder._(
      address: address ?? this.address,
      zipCode: zipCode ?? this.zipCode,
      contactName: contactName ?? this.contactName,
      city: city ?? this.city,
      country: country ?? this.country,
    );
  }
}

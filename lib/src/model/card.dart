import 'package:json_annotation/json_annotation.dart';

part 'card.g.dart';

///
@JsonSerializable(includeIfNull: false)
class Card {
  ///
  const Card({
    required this.cardAlias,
    required this.cardNumber,
    required this.expireMonth,
    required this.expireYear,
    required this.cardHolderName,
  });

  ///
  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  ///
  final String cardAlias;

  ///
  final String cardNumber;

  ///
  final String expireYear;

  ///
  final String expireMonth;

  ///
  final String cardHolderName;

  /// Converts [Map] to [Card]
  Card fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  /// Converts [Card] to [Map]
  Map<String, dynamic> toJson() => _$CardToJson(this);
}

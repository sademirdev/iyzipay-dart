import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_information.g.dart';

@JsonSerializable(includeIfNull: false)
class CardInformation with JsonConvertible<CardInformation> {
  const CardInformation({
    required this.cardAlias,
    required this.cardNumber,
    required this.expireYear,
    required this.expireMonth,
    required this.cardHolderName,
    required this.metadata,
  });

  final String cardAlias;
  final String cardNumber;
  final String expireYear;
  final String expireMonth;
  final String cardHolderName;
  final Map<String, String> metadata;

  @override
  CardInformation fromJson(JsonMap json) => _$CardInformationFromJson(json);

  @override
  JsonMap toJson() => _$CardInformationToJson(this);
}

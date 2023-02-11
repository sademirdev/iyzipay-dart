import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'consumer.g.dart';

@JsonSerializable(includeIfNull: false)
class Consumer with JsonConvertible<Consumer> {
  const Consumer({
    required this.name,
    required this.surname,
    required this.identityNumber,
    required this.email,
    required this.gsmNumber,
  });

  final String name;
  final String surname;
  final String identityNumber;
  final String email;
  final String gsmNumber;

  @override
  Consumer fromJson(JsonMap json) => _$ConsumerFromJson(json);

  @override
  JsonMap toJson() => _$ConsumerToJson(this);
}

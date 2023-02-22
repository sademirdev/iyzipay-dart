import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/iyziup_address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initial_consumer.g.dart';

@JsonSerializable(includeIfNull: false)
class InitialConsumer with JsonConvertible<InitialConsumer> {
  const InitialConsumer({
    required this.name,
    required this.surname,
    required this.email,
    required this.gsmNumber,
    required this.addressList,
  });

  final String name;
  final String surname;
  final String email;
  final String gsmNumber;
  final List<IyziupAddress> addressList;

  @override
  InitialConsumer fromJson(JsonMap json) => _$InitialConsumerFromJson(json);

  @override
  JsonMap toJson() => _$InitialConsumerToJson(this);
}

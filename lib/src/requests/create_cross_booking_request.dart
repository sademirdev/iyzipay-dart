import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/currency.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cross_booking_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateCrossBookingRequest extends BaseRequest<CreateCrossBookingRequest> {
  const CreateCrossBookingRequest({
    required this.subMerchantKey,
    required this.price,
    required this.reason,
    required this.currency,
  });

  final String subMerchantKey;
  final double price;
  final String reason;
  final Currency currency;

  @override
  CreateCrossBookingRequest fromJson(JsonMap json) =>
      _$CreateCrossBookingRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateCrossBookingRequestToJson(this);
}

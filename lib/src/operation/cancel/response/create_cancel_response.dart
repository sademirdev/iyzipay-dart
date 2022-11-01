import 'package:iyzipay/src/enum/currency.dart';
import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cancel_response.g.dart';

///
@JsonSerializable(includeIfNull: false)
class CreateCancelResponse extends Response<CreateCancelResponse> {
  ///
  const CreateCancelResponse({
    super.status,
    super.locale,
    super.conversationId,
    super.systemTime,
    this.paymentId,
    this.price,
    this.currency,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  ///
  final String? paymentId;

  ///
  final double? price;

  ///
  final Currency? currency;

  /// Converts [CreateCancelResponse] to [Map]
  @override
  CreateCancelResponse fromJson(Map<String, dynamic> json) => _$CreateCancelResponseFromJson(json);
}

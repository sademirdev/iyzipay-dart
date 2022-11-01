import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cancel_request.g.dart';

/// {@template create_cancel_request}
///
/// A payment collected through iyzico can be canceled within the same day
/// (without the end of the day) as per bank rules. The difference between
/// the cancellation and the refund is that it can be done on the same day as
/// the payment and does not create an input/output on the card statement.
/// In order to be able to cancel, the id (paymentId) of the payment must be sent.
/// If the cancellation is successful, the canceled amount (price) will be returned
/// from the service. The cancellation process works from the top, that is,
/// it cancels the entire payment.
///
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class CreateCancelRequest extends Request<CreateCancelRequest> {
  /// {@macro create_cancel_request}
  const CreateCancelRequest({
    super.locale,
    super.conversationId,
    required this.paymentId,
    required this.ip,
  });

  /// The unique payment number given to the transaction by iyzico.
  final String paymentId;

  /// The IP address to which the transaction was sent.
  final String ip;

  @override
  CreateCancelRequest fromJson(Map<String, dynamic> json) => _$CreateCancelRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateCancelRequestToJson(this);
}

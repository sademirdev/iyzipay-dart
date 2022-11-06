import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_checkout_form_request.g.dart';

/// {@template retrieve_checkout_form_request}
///
/// iyzico, after entering the card information in the payment form and clicking
/// the "Pay X TL" button; It is directed to the `callbackUrl` address specified
/// while creating the payment form and a [token] value is posted to this address.
/// A second query should be made with this [token] value. With the second query
/// to be made, the details of the transaction result are obtained.
///
/// You can get the [token] value you will use in this query when you create
/// the payment form or when it is posted to your `callbackUrl` address by iyzico.
///
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class RetrieveCheckoutFormRequest extends Request<RetrieveCheckoutFormRequest> {
  /// {@macro retrieve_checkout_form_request}
  const RetrieveCheckoutFormRequest({
    super.locale,
    super.conversationId,
    required this.token,
  });

  /// Unique value generated for the checkout form. It is specially produced for
  /// each request and returned to the workplace. It is a required field to
  /// find out the result of the payment.
  final String token;

  /// Converts [RetrieveCheckoutFormRequest] to [Map]
  @override
  RetrieveCheckoutFormRequest fromJson(Map<String, dynamic> json) => _$RetrieveCheckoutFormRequestFromJson(json);

  /// Converts [Map] to [RetrieveCheckoutFormRequest]
  @override
  Map<String, dynamic> toJson() => _$RetrieveCheckoutFormRequestToJson(this);
}

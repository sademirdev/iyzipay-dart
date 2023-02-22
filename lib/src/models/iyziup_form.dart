import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:iyzipay/src/models/consumer.dart';
import 'package:iyzipay/src/models/iyziup_payment.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_iyziup_form_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyziup_form.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziupForm extends IyzipayResource {
  const IyziupForm({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.orderResponseStatus,
    this.token,
    this.callbackUrl,
    this.consumer,
    this.shippingAddress,
    this.billingAddress,
    this.paymentDetail,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? orderResponseStatus;
  final String? token;
  final String? callbackUrl;
  final Consumer? consumer;
  final Address? shippingAddress;
  final Address? billingAddress;
  final IyziupPayment? paymentDetail;

  static Future<IyziupForm?> retrieve({
    required RetrieveIyziupFormRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveIyziupForm.path,
      request: request,
      responseModel: const IyziupForm(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  IyziupForm fromJson(JsonMap json) => _$IyziupFormFromJson(json);

  @override
  JsonMap toJson() => _$IyziupFormToJson(this);
}

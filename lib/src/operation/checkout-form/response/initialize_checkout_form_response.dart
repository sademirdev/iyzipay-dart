import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_checkout_form_response.g.dart';

///
@JsonSerializable(includeIfNull: false)
class InitializeCheckoutFormResponse extends Response<InitializeCheckoutFormResponse> {
  ///
  const InitializeCheckoutFormResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.token,
    this.checkoutFormContent,
    this.tokenExpireTime,
    this.paymentPageUrl,
    this.payWithIyzicoPageUrl,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  ///
  final String? token;

  ///
  final String? checkoutFormContent;

  ///
  final int? tokenExpireTime;

  ///
  final String? paymentPageUrl;

  ///
  final String? payWithIyzicoPageUrl;

  /// Converts [InitializeCheckoutFormResponse] to [Map]
  @override
  InitializeCheckoutFormResponse fromJson(Map<String, dynamic> json) => _$InitializeCheckoutFormResponseFromJson(json);

  ///
  String? get htmlContent {
    if (checkoutFormContent == null) return null;

    const additionalHtml = '<div id="iyzipay-checkout-form" class="responsive"></div>';
    return checkoutFormContent! + additionalHtml;
  }
}

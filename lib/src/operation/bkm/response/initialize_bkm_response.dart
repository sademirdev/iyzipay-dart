import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_bkm_response.g.dart';

///
@JsonSerializable(includeIfNull: false)
class InitializeBkmResponse extends Response<InitializeBkmResponse> {
  ///
  const InitializeBkmResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.htmlContent,
    this.token,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  ///
  final String? htmlContent;

  ///
  final String? token;

  @override
  InitializeBkmResponse fromJson(Map<String, dynamic> json) => _$InitializeBkmResponseFromJson(json);
}

import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'init_ucs_request.g.dart';

@JsonSerializable(includeIfNull: false)
class InitUcsRequest extends BaseRequest<InitUcsRequest> {
  const InitUcsRequest({
    super.locale,
    super.conversationId,
    required this.email,
    required this.gsmNumber,
  });

  final String email;
  final String gsmNumber;

  @override
  InitUcsRequest fromJson(JsonMap json) => _$InitUcsRequestFromJson(json);

  @override
  JsonMap toJson() => _$InitUcsRequestToJson(this);
}

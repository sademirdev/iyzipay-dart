import 'package:iyzipay/src/enums/iyzipay_locale.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_request.g.dart';

abstract class BaseRequest<T> with JsonConvertible<T> {
  const BaseRequest({
    this.locale,
    this.conversationId,
  });

  /// The locale value specified in the request is returned, its default value is `tr`.
  final IyzipayLocale? locale;

  /// A value that you can send and receive during the request can be used to match the request/response.
  final String? conversationId;
}

@JsonSerializable(includeIfNull: false)
class EmptyRequest extends BaseRequest<EmptyRequest> {
  const EmptyRequest({
    super.locale,
    super.conversationId,
  });

  @override
  EmptyRequest fromJson(JsonMap json) => _$EmptyRequestFromJson(json);

  @override
  JsonMap toJson() => _$EmptyRequestToJson(this);
}

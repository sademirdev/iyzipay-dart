import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paging_request.g.dart';

@JsonSerializable(includeIfNull: false)
class PagingRequest extends BaseRequest<PagingRequest> {
  const PagingRequest({
    required this.page,
    required this.count,
  });

  @JsonKey(includeFromJson: true, includeToJson: false)
  final int? page;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final int? count;

  @override
  PagingRequest fromJson(JsonMap json) => _$PagingRequestFromJson(json);

  @override
  JsonMap toJson() => _$PagingRequestToJson(this);
}

import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyzi_link_save.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziLinkSave with JsonConvertible<IyziLinkSave> {
  const IyziLinkSave({
    required this.token,
    required this.url,
    required this.imageUrl,
  });

  final String token;
  final String url;
  final String imageUrl;

  @override
  IyziLinkSave fromJson(JsonMap json) => _$IyziLinkSaveFromJson(json);

  @override
  JsonMap toJson() => _$IyziLinkSaveToJson(this);
}

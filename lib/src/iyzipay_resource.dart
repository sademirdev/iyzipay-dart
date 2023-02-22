import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyzipay_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class IyzipayResource with JsonConvertible<IyzipayResource> {
  const IyzipayResource({
    this.status,
    this.locale,
    this.systemTime,
    this.conversationId,
    this.errorCode,
    this.errorMessage,
    this.errorGroup,
  });

  /// Reports the result of the request.
  ///
  /// If the operation is successful, it returns `success`,
  /// if it is wrong, it returns `failure`.
  final IyzipayStatus? status;

  /// The locale value specified in the request is returned, its default value is `tr`.
  final IyzipayLocale? locale;

  /// The current unix timestamp value of the returned result.
  final int? systemTime;

  /// A value that you can send and receive during the request can be used to match the request/response.
  ///
  /// If it was sent during the request, it is returned exactly as it is in the result.
  final String? conversationId;

  /// If the operation is faulty, this is the code specified for the error.
  ///
  /// Iyzico error code, it is null if status is [IyzipayStatus.success]
  final String? errorCode;

  /// If the operation is faulty, this is the message specified about the error.
  /// It provides language support according to the locale parameter.
  ///
  /// Iyzico error message, it is null if status is [IyzipayStatus.success]
  final String? errorMessage;

  /// If the operation is faulty, this is the group specified for the error.
  final String? errorGroup;

  static const _authorization = 'Authorization';
  static const _randomHeaderName = 'x-iyzi-rnd';
  static const _clientVersionEntry =
      MapEntry('x-iyzi-client-version', 'iyzipay-node-2.0.48');
  static const _contentTypeEntry =
      MapEntry('Content-Type', 'application/json; charset=UTF-8');
  static const _separator = ':';
  static const _blank = ' ';
  static const _iyziWsHeaderName = 'IYZWS';
  static const _iyziWsHeaderNameV2 = 'IYZWSv2';
  static const _v2 = '/v2/';

  /// Generates HTTP Header for api version 1 and 2

  // TODO(sametdmr): handle nullable body and take request instead
  static Map<String, String> generateHttpHeader({
    required Options options,
    required Map<String, dynamic> body,
    String? uri,
  }) {
    final randomString = Utils.generateRandomString();
    final randomStringEntry = MapEntry(_randomHeaderName, randomString);
    final header = Map.fromEntries([
      _contentTypeEntry,
      _clientVersionEntry,
      randomStringEntry,
    ]);

    if (uri?.contains(_v2) ?? false) {
      header[_authorization] = _generateAuthorizationHeaderV2(
        apiKey: options.apiKey,
        randomString: randomString,
        secretKey: options.secretKey,
        body: body,
        uri: uri!,
      );
    } else {
      header[_authorization] = _generateAuthorizationHeader(
        apiKey: options.apiKey,
        randomString: randomString,
        secretKey: options.secretKey,
        body: _generatePkiString(body),
      );
    }

    return header;
  }

  /// Generates authorization header for api version 2
  static String _generateAuthorizationHeaderV2({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required Map<String, dynamic> body,
    required String uri,
  }) {
    final hash = Utils.generateHashV2(
      apiKey: apiKey,
      randomString: randomString,
      secretKey: secretKey,
      separator: _separator,
      body: body,
      uri: uri,
    );

    return _iyziWsHeaderNameV2 + _blank + hash;
  }

  /// Generates authorization header for api version 1
  static String _generateAuthorizationHeader({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required String body,
  }) {
    final hash = Utils.generateHash(
      apiKey: apiKey,
      randomString: randomString,
      secretKey: secretKey,
      body: body,
    );

    return _iyziWsHeaderName + _blank + apiKey + _separator + hash;
  }

  /// It should be used after `toJson` method, otherwise it will probably return '[]'
  ///
  /// Price variables must be converted before this method

  // TODO(sametdmr): implement generatePkiString test
  static String _generatePkiString(Object obj) {
    String checkAndRegenerate(dynamic obj) {
      if (obj is Object && obj is Map<String, dynamic> || obj is List) {
        return _generatePkiString(obj as Object);
      }
      return obj.toString();
    }

    String removeCommaAndBlank(String str) => str.substring(0, str.length - 2);

    String removeComma(String str) => str.substring(0, str.length - 1);

    const bracketStart = '[';
    const bracketEnd = ']';
    const equalSign = '=';
    const comma = ',';

    var str = StringBuffer(bracketStart);

    if (obj is Map<String, dynamic>) {
      for (final element in obj.entries) {
        final key = element.key;
        final value = element.value;
        if (value != null) {
          str
            ..write(key)
            ..write(equalSign)
            ..write(checkAndRegenerate(value))
            ..write(comma);
        }
      }

      str = StringBuffer(removeComma(str.toString()))..write(bracketEnd);
      return str.toString();
    }

    if (obj is List) {
      for (final element in obj) {
        str
          ..write(checkAndRegenerate(element))
          ..write(comma)
          ..write(_blank);
      }

      str = StringBuffer(removeCommaAndBlank(str.toString()))
        ..write(bracketEnd);
      return str.toString();
    }

    str.write(bracketEnd);
    return str.toString();
  }

  /// Converts [Map] to [IyzipayResource]
  @override
  IyzipayResource fromJson(JsonMap json) => _$IyzipayResourceFromJson(json);

  /// Converts [Converts [T] to [Map]] to [Map]
  @override
  JsonMap toJson() => _$IyzipayResourceToJson(this);
}

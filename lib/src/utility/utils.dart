// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

/// Todo(sametdmr): Handle documentation
class Utils {
  /// A literal string for some functions as a separator: `:`
  static const SEPARATOR = ':';

  /// A literal string for some functions as a blank: ` `
  static const BLANK = ' ';

  /// Todo(sametdmr): Handle documentation
  Map<String, String> generateHttpHeader({
    required String apiKey,
    required String secretKey,
    required Map<String, dynamic> body,
    String? uri,
  }) {
    const AUTHORIZATION = 'Authorization';
    const V2 = '/v2/';

    final header = <String, String>{};

    final randomString = _generateRandomString();

    const CONTENT_TYPE = {'Content-Type': 'application/json; charset=UTF-8'};
    const CLIENT_VERSION = {'x-iyzi-client-version': 'iyzipay-node-2.0.48'};
    final randomStringHeader = {'x-iyzi-rnd': randomString};

    header
      ..addAll(CONTENT_TYPE)
      ..addAll(randomStringHeader)
      ..addAll(CLIENT_VERSION);

    if (uri?.contains(V2) ?? false) {
      header[AUTHORIZATION] = _generateAuthorizationHeaderV2(
        apiKey: apiKey,
        randomString: randomString,
        secretKey: secretKey,
        body: body,
        uri: uri!,
      );

      return header;
    } else {
      header[AUTHORIZATION] = _generateAuthorizationHeader(
        apiKey: apiKey,
        randomString: randomString,
        secretKey: secretKey,
        body: _generatePkiString(body),
      );

      return header;
    }
  }

  String _generateRandomString() {
    final first = DateTime.now().millisecondsSinceEpoch.toString().substring(7);
    final second = Random().nextDouble().toString().substring(2);
    return first + second;
  }

  String _generateAuthorizationHeaderV2({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required Map<String, dynamic> body,
    required String uri,
  }) {
    const IYZI_WS_HEADER_NAME_V2 = 'IYZWSv2';

    final hash = _generateHashV2(
      apiKey: apiKey,
      randomString: randomString,
      secretKey: secretKey,
      body: body,
      uri: uri,
    );

    return IYZI_WS_HEADER_NAME_V2 + BLANK + hash;
  }

  String _generateHashV2({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required Map<String, dynamic> body,
    required String uri,
  }) {
    const API_KEY_NAME = 'apiKey';
    const RANDOM_STARING_NAME = 'randomKey';
    const SIGNATURE_NAME = 'signature';

    final secretKeyEncoded = utf8.encode(secretKey);
    final stringEncoded = utf8.encode(randomString + uri + jsonEncode(body));

    final signature = Hmac(sha256, secretKeyEncoded).convert(stringEncoded);

    final authorizationParams = [
      API_KEY_NAME + SEPARATOR + apiKey,
      RANDOM_STARING_NAME + SEPARATOR + randomString,
      SIGNATURE_NAME + SEPARATOR + signature.toString(),
    ];

    final resultEncoded = utf8.encode(authorizationParams.join('&'));

    return base64.encode(resultEncoded);
  }

  String _generateAuthorizationHeader({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required String body,
  }) {
    const IYZI_WS_HEADER_NAME = 'IYZWS';

    final hash = _generateHash(
      apiKey: apiKey,
      randomString: randomString,
      secretKey: secretKey,
      body: body,
    );

    return IYZI_WS_HEADER_NAME + BLANK + apiKey + SEPARATOR + hash;
  }

  String _generateHash({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required String body,
  }) {
    final string = apiKey + randomString + secretKey + body;
    final bytes = utf8.encode(string); // data being hashed
    final digest = sha1.convert(bytes);

    return base64.encode(digest.bytes);
  }

  /// It should be used after `toJson` method, otherwise it will probably return '[]'
  ///
  /// Price variables must be converted before this method
  // Todo(sametdmr): Test the function
  String _generatePkiString(Object obj) {
    String checkAndRegenerate(dynamic obj) {
      if (obj is Object && obj is Map<String, dynamic> || obj is List) return _generatePkiString(obj as Object);
      return obj.toString();
    }

    String removeCommaAndBlank(String str) => str.substring(0, str.length - 2);

    String removeComma(String str) => str.substring(0, str.length - 1);

    const bracketStart = '[';
    const bracketEnd = ']';
    const equalSign = '=';
    const comma = ',';
    const blank = ' ';

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
          ..write(blank);
      }

      str = StringBuffer(removeCommaAndBlank(str.toString()))..write(bracketEnd);
      return str.toString();
    }

    str.write(bracketEnd);
    return str.toString();
  }

  /// Formats the given dynamic [price] to [String]
  ///
  /// if the given value is not the expected one function will return null.
  String? formatPrice(dynamic price) {
    if (price == null) return null;

    if (price is num || price is String) {
      if (!(_isFinite(price) ?? true)) return null;
      final result = double.tryParse(price.toString());
      if (result == null) return null;
      return result.toString();
    }
    return null;
  }

  bool? _isFinite(dynamic price) {
    if (price is num) {
      return price.isFinite;
    }
    if (price is String) {
      final value = double.tryParse(price);
      return value?.isFinite;
    }
    return null;
  }
}

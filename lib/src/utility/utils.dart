import 'dart:convert';

import 'package:crypto/crypto.dart';

/// The Utility class which give some capability to Iyzipay operations
///
/// NOTE: The [formatPrice] method should be used with every price variable to
/// avoid any unexpected errors.
class Utils {
  /// A literal string which helps for generating authorization header
  final _separator = ':';

  /// A literal string which helps for generating authorization header
  final _blank = ' ';

  /// Generates the header for all request
  ///
  /// it returns two different result for particular api version,
  /// see more [generateAuthorizationHeader], [generateAuthorizationHeaderV2]
  Map<String, String> generateHttpHeader({
    required String apiKey,
    required String secretKey,
    required Map<String, dynamic> body,
    String? uri,
  }) {
    const authorization = 'Authorization';
    const v2 = '/v2/';

    final header = <String, String>{};

    final randomString = generateRandomString();

    const contentType = {'Content-Type': 'application/json; charset=UTF-8'};
    const clientVersion = {'x-iyzi-client-version': 'iyzipay-node-2.0.48'};
    final randomStringHeader = {'x-iyzi-rnd': randomString};

    header
      ..addAll(contentType)
      ..addAll(randomStringHeader)
      ..addAll(clientVersion);

    if (uri?.contains(v2) ?? false) {
      header[authorization] = generateAuthorizationHeaderV2(
        apiKey: apiKey,
        randomString: randomString,
        secretKey: secretKey,
        body: body,
        uri: uri!,
      );

      return header;
    } else {
      header[authorization] = generateAuthorizationHeader(
        apiKey: apiKey,
        randomString: randomString,
        secretKey: secretKey,
        body: generatePkiString(body),
      );

      return header;
    }
  }

  /// Generates a random string
  String generateRandomString() {
    // final first = DateTime.now().millisecondsSinceEpoch.toString().substring(7);
    // final second = Random().nextDouble().toString().substring(2);
    // return first + second;
    return '123456789';
  }

  /// Generates authorization header for v2 version of api
  String generateAuthorizationHeaderV2({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required Map<String, dynamic> body,
    required String uri,
  }) {
    const iyziWsHeaderNameV2 = 'IYZWSv2';

    final hash = generateHashV2(
      apiKey: apiKey,
      randomString: randomString,
      secretKey: secretKey,
      body: body,
      uri: uri,
    );

    return iyziWsHeaderNameV2 + _blank + hash;
  }

  /// Generates hash for v2 version of api
  String generateHashV2({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required Map<String, dynamic> body,
    required String uri,
  }) {
    const apiKeyName = 'apiKey';
    const randomStringName = 'randomKey';
    const signatureName = 'signature';

    final secretKeyEncoded = utf8.encode(secretKey);
    final stringEncoded = utf8.encode(randomString + uri + jsonEncode(body));

    final signature = Hmac(sha256, secretKeyEncoded).convert(stringEncoded);

    final authorizationParams = [
      apiKeyName + _separator + apiKey,
      randomStringName + _separator + randomString,
      signatureName + _separator + signature.toString(),
    ];

    final resultEncoded = utf8.encode(authorizationParams.join('&'));

    return base64.encode(resultEncoded);
  }

  /// Generates authorization header for v1 version of api
  String generateAuthorizationHeader({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required String body,
  }) {
    const iyziWsHeaderName = 'IYZWS';

    final hash = generateHash(
      apiKey: apiKey,
      randomString: randomString,
      secretKey: secretKey,
      body: body,
    );

    return iyziWsHeaderName + _blank + apiKey + _separator + hash;
  }

  /// Generates hash for v1 version of api
  String generateHash({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required String body,
  }) {
    final string = apiKey + randomString + secretKey + body;
    final bytes = utf8.encode(string); // data being hashed
    // final bytes = string.codeUnits;
    final digest = sha1.convert(bytes);

    return base64.encode(digest.bytes);
  }

  /// It should be used after `toJson` method, otherwise it will probably return '[]'
  ///
  /// Price variables must be converted before this method

  // Todo(sametdmr): Test the function
  String generatePkiString(Object obj) {
    String checkAndRegenerate(dynamic obj) {
      if (obj is Object && obj is Map<String, dynamic> || obj is List) return generatePkiString(obj as Object);
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

  /// Formats the given dynamic [price] to [String]. It should be used with all
  /// price variable in order to avoid any errors.
  ///
  /// if the given value is not the expected one function will return null.
  static String? formatPrice(dynamic price) {
    if (price == null) return null;

    if (price is num || price is String) {
      if (!(_isFinite(price) ?? true)) return null;
      final result = double.tryParse(price.toString());
      if (result == null) return null;
      return result.toString();
    }
    return null;
  }

  static bool? _isFinite(dynamic price) {
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

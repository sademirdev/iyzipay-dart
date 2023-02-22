import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

class Utils {
  /// Generates a random string
  static String generateRandomString() {
    final first = DateTime.now().millisecondsSinceEpoch.toString().substring(7);
    final second = Random().nextDouble().toString().substring(2);
    return first + second;
  }

  /// Generates hash for api version 1
  static String generateHash({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required String body,
  }) {
    final string = apiKey + randomString + secretKey + body;
    final bytes = utf8.encode(string);
    // final bytes = string.codeUnits;
    final digest = sha1.convert(bytes);

    return base64.encode(digest.bytes);
  }

  /// Generates hash for api version 2
  static String generateHashV2({
    required String apiKey,
    required String randomString,
    required String secretKey,
    required String separator,
    required Map<String, dynamic> body,
    required String uri,
  }) {
    const apiKeyName = 'apiKey';
    const randomStringName = 'randomKey';
    const signatureName = 'signature';

    final secretKeyEncoded = utf8.encode(secretKey);
    final stringEncoded = utf8.encode(randomString + uri + json.encode(body));
    final signature = Hmac(sha256, secretKeyEncoded).convert(stringEncoded);
    final authorizationParams = [
      apiKeyName + separator + apiKey,
      randomStringName + separator + randomString,
      signatureName + separator + signature.toString(),
    ];
    final resultEncoded = utf8.encode(StringBuffer(authorizationParams.join('&')).toString());

    return base64.encode(resultEncoded);
  }

  /// Formats the given dynamic [price] to [String]. It should be used with all
  /// price variable in order to avoid any errors.
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

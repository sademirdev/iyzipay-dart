import 'dart:convert';

class DigestHelper {
  // TODO(sametdmr): check this feature
  static String? decodeString(String? content) {
    return (content != null && content.isNotEmpty)
        ? String.fromCharCodes(base64Decode(content))
        : null;
  }
}

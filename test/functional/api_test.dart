import 'package:iyzipay/iyzipay.dart';
import 'package:test/test.dart';

import 'options.dart';

void main() {
  test(
    'test api',
    () async {
      final result = await ApiTest.retrieve(sandboxOptions);

      expect(result?.status, IyzipayStatus.success);
      expect(result?.locale, IyzipayLocale.tr);
      expect(result?.systemTime, isNotNull);
      expect(result?.errorCode, isNull);
      expect(result?.errorGroup, isNull);
      expect(result?.errorMessage, isNull);
    },
  );
}

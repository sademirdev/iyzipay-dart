import 'package:iyzipay/iyzipay.dart';
import 'package:test/test.dart';

import 'config.dart';

void main() {
  /// Note: [TestConfig] has been ignored by git, so you need your own, or just put the values
  final iyzipay = Iyzipay(
    options: IyzipayOptions(
      baseUrl: TestConfig.baseUrl,
      apiKey: TestConfig.apiKey,
      secretKey: TestConfig.secretKey,
    ),
  );

  test('health check', () async {
    final response = await iyzipay.healthCheck.test();

    expect(response?.status, IyzipayStatus.success);
    expect(response?.locale, isNotNull);
    expect(response?.systemTime, isNotNull);

    expect(response?.errorCode, isNull);
    expect(response?.errorMessage, isNull);
    expect(response?.errorGroup, isNull);
  });
}

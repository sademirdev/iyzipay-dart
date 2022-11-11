import 'package:iyzipay/iyzipay.dart';
import 'package:test/test.dart';

import '../../config.dart';

void main() {
  /// Note: [TestConfig] has been ignored by git, so you need your own,
  /// or just put the values
  final iyzipay = Iyzipay(
    options: IyzipayOptions(
      baseUrl: TestConfig.baseUrl,
      apiKey: TestConfig.apiKey,
      secretKey: TestConfig.secretKey,
    ),
  );

  group('Create Approval Test -', () {
    test('Should approve payment', () async {
      final response = await iyzipay.approval.create(
        request: const CreateApprovalRequest(
          paymentTransactionId: '19671096',
        ),
      );

      // TODO(sametdmr): complete approval test.

      // ignore: avoid_print
      print(response?.errorMessage);
    });
  });
}

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

  group('Create Disapproval Test -', () {
    test('Should disapprove payment', () async {
      final response = await iyzipay.disapproval.create(
        request: const CreateDisapprovalRequest(
          paymentTransactionId: '19671096',
        ),
      );

      // TODO(sametdmr): complete disapproval test.

      print(response?.errorMessage);
    });
  });
}

import 'package:iyzipay/src/utility/utils.dart';
import 'package:test/test.dart';

/// All matcher values in `expect()` method are taken from https://github.com/iyzico/iyzipay-node
///
/// Note: In `Should generate hash v2` Test, [Utils.generateHashV2] method need a real `body` variable,
/// so the body variable has been updated with `{"name": "samet"}` (before: `body = 'body'`)
void main() {
  const apiKey = 'api_key';
  const secretKey = 'secret_key';
  const randomString = 'random_string';
  const uri = 'uri';
  const body = 'body';

  final utils = Utils();

  group('Generate Authorization Header Test:', () {
    test('Should generate authorization header', () {
      const expected = 'IYZWS api_key:ikF+xhjLA0/xsvl+eJjoHWkwh5g=';

      final result = utils.generateAuthorizationHeader(
        apiKey: apiKey,
        randomString: randomString,
        secretKey: secretKey,
        body: body,
      );

      expect(result, expected);
    });

    test('Should generate authorization header v2', () {
      // Warning: Because of the `jsonEncode()` method in [Utils.generateHashV2], body have to be a real body.
      // that's why the body has been updated.
      const body = {'name': 'samet'};
      const expected =
          'IYZWSv2 YXBpS2V5OmFwaV9rZXkmcmFuZG9tS2V5OnJhbmRvbV9zdHJpbmcmc2lnbmF0dXJlOmFjY2I1NTQxNDAwMmRjOTI1MjYzOWVmNDlkMDhmZGVkZGZiOWVhMWJkYzEzYTAwZmI3Njc2NWI4MGJhZjJmN2I=';

      final result = utils.generateAuthorizationHeaderV2(
        apiKey: apiKey,
        randomString: randomString,
        secretKey: secretKey,
        body: body,
        uri: uri,
      );

      expect(result, expected);
    });
  });

  group('Generate Hash Test:', () {
    test('Should generate hash', () {
      const expected = 'ikF+xhjLA0/xsvl+eJjoHWkwh5g=';

      final result = utils.generateHash(
        apiKey: apiKey,
        body: body,
        randomString: randomString,
        secretKey: secretKey,
      );

      expect(result, expected);
    });

    test('Should generate hash v2', () {
      /// Warning: Because of the `jsonEncode()` method in [Utils.generateHashV2], body have to be a real body.
      /// that's why the body has been updated.
      const body = {'name': 'samet'};
      const expected =
          'YXBpS2V5OmFwaV9rZXkmcmFuZG9tS2V5OnJhbmRvbV9zdHJpbmcmc2lnbmF0dXJlOmFjY2I1NTQxNDAwMmRjOTI1MjYzOWVmNDlkMDhmZGVkZGZiOWVhMWJkYzEzYTAwZmI3Njc2NWI4MGJhZjJmN2I=';

      final result = utils.generateHashV2(
        apiKey: apiKey,
        body: body,
        randomString: randomString,
        secretKey: secretKey,
        uri: uri,
      );

      expect(result, expected);
    });
  });

  group('Format Price Test:', () {
    test('Should convert non-float price', () {
      final result = Utils.formatPrice('22');
      expect(result, '22.0');
    });

    test('Should convert float price', () {
      final result = Utils.formatPrice('23.0');
      expect(result, '23.0');
    });

    test('Should eliminate floating zeros', () {
      final result = Utils.formatPrice('15.340000');
      expect(result, '15.34');
    });

    test('Should not eliminate leading zero', () {
      final result = Utils.formatPrice('0.12345');
      expect(result, '0.12345');
    });

    test('Should eliminate leading zero containing only one zero', () {
      final result = Utils.formatPrice('22.00');
      expect(result, '22.0');
    });

    test('Should not eliminate zeros in floating value', () {
      final result = Utils.formatPrice('23.00450067');
      expect(result, '23.00450067');
    });

    test('Should convert integer to string', () {
      final result = Utils.formatPrice(23);
      expect(result, '23.0');
    });

    test('Should convert float to string', () {
      final result = Utils.formatPrice(23.12);
      expect(result, '23.12');
    });

    test('Should return same price if given price is null', () {
      final result = Utils.formatPrice(double.nan);
      expect(result, isNull);
    });

    test('Should be null', () {
      final result = Utils.formatPrice('price');
      expect(result, isNull);
    });
  });
}

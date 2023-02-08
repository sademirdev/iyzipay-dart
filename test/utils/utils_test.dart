// import 'dart:convert';

// import 'package:iyzipay/src/utils/utils.dart';
// import 'package:test/test.dart';

// import '../fixture/fixture_reader.dart';

// void main() {
//   late Utils sut;

//   const apiKey = 'api_key';
//   const randomString = 'random_string';
//   const secretKey = 'secret_key';
//   const uri = 'uri';

//   setUp(() {
//     sut = Utils();
//   });

//   dynamic getBodyFromFixture(String name) {
//     return json.decode(fixture(name));
//   }

//   group('generateHash -', () {
//     test('should generate valid hash when the body is single string', () {
//       const bodyString = 'body';
//       const expected = 'ikF+xhjLA0/xsvl+eJjoHWkwh5g=';

//       final result = sut.generateHash(
//         apiKey: apiKey,
//         randomString: randomString,
//         secretKey: secretKey,
//         body: bodyString,
//       );
//       expect(result, expected);
//     });

//     test('should generate valid hash with normal body', () {
//       final body = getBodyFromFixture('body_with_normal_object.json');
//       final bodyString = json.encode(body);
//       const expected = '/1NpQpCfIXYFKv/9WMrtOqRoJ8E=';

//       final result = sut.generateHash(
//         apiKey: apiKey,
//         randomString: randomString,
//         secretKey: secretKey,
//         body: bodyString,
//       );
//       expect(result, expected);
//     });

//     test('should generate valid hash with complex body', () {
//       final body = getBodyFromFixture('payment_request_body.json');
//       final bodyString = json.encode(body);
//       const expected = 'CIiBmHEA0/foYTBHbTVZ9u4d//0=';

//       final result = sut.generateHash(
//         apiKey: apiKey,
//         randomString: randomString,
//         secretKey: secretKey,
//         body: bodyString,
//       );
//       expect(result, expected);
//     });
//   });

//   group('generateHashV2 -', () {
//     test(
//       'should generate valid hash with normal body',
//       () {
//         final body = getBodyFromFixture('body_with_normal_object.json')
//             as Map<String, dynamic>;
//         const expected =
//             'YXBpS2V5OmFwaV9rZXkmcmFuZG9tS2V5OnJhbmRvbV9zdHJpbmcmc2lnbmF0dXJlOjZjMmFhYmZiZTUwNWUwYzczNTI2MGNiNDBlODJhNjMxNTAyYjIwNDMzN2NkYmMzN2QyMzYyZGRiNmNjNWZjMTc=';

//         final result = sut.generateHashV2(
//           apiKey: apiKey,
//           randomString: randomString,
//           secretKey: secretKey,
//           body: body,
//           uri: uri,
//         );
//         expect(result, expected);
//       },
//     );

//     test(
//       'should generate valid hash with complex body',
//       () {
//         final body = getBodyFromFixture('payment_request_body.json')
//             as Map<String, dynamic>;
//         const expected =
//             'YXBpS2V5OmFwaV9rZXkmcmFuZG9tS2V5OnJhbmRvbV9zdHJpbmcmc2lnbmF0dXJlOjQ5MjIwYmE4MjlhMDA3ZjZmMTYyMDc4YTA3NDg2ZDE0NDI4NGY3MDBiNmRhNTkwMGU3ZjRiNzA1ZDQxMTFhZWQ=';

//         final result = sut.generateHashV2(
//           apiKey: apiKey,
//           randomString: randomString,
//           secretKey: secretKey,
//           body: body,
//           uri: uri,
//         );
//         expect(result, expected);
//       },
//     );
//   });

//   group('generateRandomString -', () {
//     test('should not be null', () {
//       final result = sut.generateRandomString();
//       expect(result, isNotNull);
//     });

//     test('should not be empty', () {
//       final result = sut.generateRandomString();
//       expect(result, isNotEmpty);
//     });

//     test('should return random string', () {
//       final result1 = sut.generateRandomString();
//       final result2 = sut.generateRandomString();
//       expect(result1, isNot(result2));
//     });
//   });

//   group('formatPrice -', () {
//     test('should convert non-float price', () {
//       final result = Utils.formatPrice('22');
//       expect(result, '22.0');
//     });

//     test('should convert float price', () {
//       final result = Utils.formatPrice('23.0');
//       expect(result, '23.0');
//     });

//     test('should eliminate floating zeros', () {
//       final result = Utils.formatPrice('15.340000');
//       expect(result, '15.34');
//     });

//     test('should not eliminate leading zero', () {
//       final result = Utils.formatPrice('0.12345');
//       expect(result, '0.12345');
//     });

//     test('should eliminate leading zero containing only one zero', () {
//       final result = Utils.formatPrice('22.00');
//       expect(result, '22.0');
//     });

//     test('should not eliminate zeros in floating value', () {
//       final result = Utils.formatPrice('23.00450067');
//       expect(result, '23.00450067');
//     });

//     test('should be null when the given value is invalid', () {
//       final result = Utils.formatPrice('price');
//       expect(result, null);
//     });

//     test('should be null when the given value is null', () {
//       final result = Utils.formatPrice(null);
//       expect(result, null);
//     });

//     test('should convert integer to string', () {
//       final result = Utils.formatPrice(23);
//       expect(result, '23.0');
//     });

//     test('should convert double to string', () {
//       final result = Utils.formatPrice(23.12);
//       expect(result, '23.12');
//     });
//   });
// }

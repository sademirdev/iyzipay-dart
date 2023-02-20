import 'dart:convert';
import 'dart:typed_data';

import 'package:iyzipay/src/exceptions/marketplace/sub_merchant_onboarding_crypto_encrypt_exception.dart';
import 'package:iyzipay/src/exceptions/marketplace/sub_merchant_onboarding_invalid_dms_verification_code.dart';
import 'package:iyzipay/src/exceptions/marketplace/sub_merchant_onboarding_invalid_salt_exception.dart';
import 'package:iyzipay/src/exceptions/marketplace/sub_merchant_onboarding_invalid_secret_key_exception.dart';
import 'package:iyzipay/src/models/marketplace/sub_merchant_onboarding_api_credentials.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/key_derivators/pbkdf2.dart';
import 'package:pointycastle/macs/hmac.dart';
import 'package:pointycastle/pointycastle.dart';

// TODO(sametdmr): check encrypt() method

class SubMerchantOnboardingSmsVerificationCodeEncrypter {
  SubMerchantOnboardingSmsVerificationCodeEncrypter._();

  static const verificationCodeLength = 6;

  static String encrypt(
    SubMerchantOnboardingApiCredentials credentials,
    String plainTextSmsVerificationCode,
  ) {
    _validateCredentials(credentials);
    _validateSmsVerificationCode(plainTextSmsVerificationCode);

    try {
      final keyDerivator = PBKDF2KeyDerivator(
        HMac(SHA256Digest(), 256),
      )..init(
          Pbkdf2Parameters(
            Uint8List.fromList(utf8.encode(credentials.salt)),
            65536,
            256,
          ),
        );

      final hash = keyDerivator
          .process(Uint8List.fromList(credentials.secretKey.codeUnits));

      final key = KeyParameter(hash);
      final cipher = BlockCipher('AES/ECB/PKCS7')..init(true, key);

      final plaintext = utf8.encode(plainTextSmsVerificationCode);
      final paddedLength = ((plaintext.length + 15) ~/ 16) * 16;
      final paddedText = Uint8List(paddedLength)..setAll(0, plaintext);
      final encrypted = cipher.process(paddedText);

      return base64Encode(encrypted);
    } catch (e, stackTrace) {
      throw SubMerchantOnboardingCryptoEncryptException(
        message: 'Could not encrypt SMS verification code',
        cause: e,
        stackTrace: stackTrace,
      );
    }
  }

  static void _validateCredentials(
    SubMerchantOnboardingApiCredentials credentials,
  ) {
    _validateSalt(credentials.salt);
    _validateSecretKey(credentials.secretKey);
  }

  static void _validateSalt(String salt) {
    if (salt.isEmpty) {
      throw const SubMerchantOnboardingInvalidSaltException(
        message: 'Salt can not be empty or null',
      );
    }
  }

  static void _validateSecretKey(String secretKey) {
    if (secretKey.isEmpty) {
      throw const SubMerchantOnboardingInvalidSecretKeyException(
        message: 'Secret key can not be empty or null',
      );
    }
  }

  static void _validateSmsVerificationCode(String verificationCode) {
    if (verificationCode.isEmpty) {
      throw const SubMerchantOnboardingInvalidSmsVerificationCode(
        message: 'SMS verification code can not be empty or null',
      );
    }

    if (verificationCode.length != verificationCodeLength) {
      throw const SubMerchantOnboardingInvalidSmsVerificationCode(
        message:
            'SMS verification code should be $verificationCodeLength characters long',
      );
    }
  }
}

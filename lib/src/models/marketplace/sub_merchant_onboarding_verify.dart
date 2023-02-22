import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/sub_merchant_onboarding_verify_request.dart';
import 'package:iyzipay/src/resources/sub_merchant_onboarding_verify_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubMerchantOnboardingVerify extends SubMerchantOnboardingVerifyResource {
  const SubMerchantOnboardingVerify();

  static Future<SubMerchantOnboardingVerify?> verify({
    required SubMerchantOnboardingVerifyRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.verifySubMerchantOnboarding.path,
      request: request,
      responseModel: const SubMerchantOnboardingVerify(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}

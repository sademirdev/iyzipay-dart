import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/sub_merchant_onboarding_initialize_request.dart';
import 'package:iyzipay/src/resources/sub_merchant_onboarding_initialize_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubMerchantOnboardingInitialize
    extends SubMerchantOnboardingInitializeResource {
  const SubMerchantOnboardingInitialize();

  static Future<SubMerchantOnboardingInitialize?> initialize({
    required SubMerchantOnboardingInitializeRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.initializeSubMerchantOnboarding.path,
      request: request,
      responseModel: const SubMerchantOnboardingInitialize(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}

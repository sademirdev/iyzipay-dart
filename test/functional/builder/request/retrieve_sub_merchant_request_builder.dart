import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/requests/retrieve_sub_merchant_request.dart';

import 'base_request_builder.dart';

class RetrieveSubMerchantRequestBuilder extends BaseRequestBuilder {
  const RetrieveSubMerchantRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.subMerchantExternalId,
  });

  const RetrieveSubMerchantRequestBuilder.create()
      : subMerchantExternalId = null;

  final String? subMerchantExternalId;

  RetrieveSubMerchantRequest build() {
    assert(
      subMerchantExternalId != null,
      '[subMerchantExternalId] cannot be null. It should be initialized via copyWith() method',
    );

    return RetrieveSubMerchantRequest(
      locale: locale,
      conversationId: conversationId,
      subMerchantExternalId: subMerchantExternalId!,
    );
  }

  RetrieveSubMerchantRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? subMerchantExternalId,
  }) {
    return RetrieveSubMerchantRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      subMerchantExternalId:
          subMerchantExternalId ?? this.subMerchantExternalId,
    );
  }
}
